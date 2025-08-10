// This "shared library" was written by ChatGPT.
// It overrides the X11 error handler for a BadMatch caused by X_SetInputFocus.
// This is necessary to proceed past some part(s) of the game for unknown reasons.

#define _GNU_SOURCE

#include <X11/Xlib.h>
#include <X11/Xproto.h> // For X_SetInputFocus opcode
#include <dlfcn.h>
#include <stdio.h>

// The correct function pointer type for XSetErrorHandler
typedef int (*XErrorHandler)(Display *, XErrorEvent *);
typedef XErrorHandler (*XSetErrorHandlerFn)(XErrorHandler);

static XSetErrorHandlerFn real_XSetErrorHandler = NULL;

// Our replacement handler
static int my_error_handler(Display *dpy, XErrorEvent *err) {
    if (err->request_code == X_SetInputFocus && err->error_code == BadMatch) {
        fprintf(stderr, "[ignore_badmatch] Ignored BadMatch from X_SetInputFocus\n");
        return 0; // Swallow the error
    }
    // Let other errors pass silently or print them
    char err_text[256];
    XGetErrorText(dpy, err->error_code, err_text, sizeof(err_text));
    fprintf(stderr, "[ignore_badmatch] X Error: %s (opcode %d, error code %d)\n",
            err_text, err->request_code, err->error_code);
    return 0;
}

// Intercept XSetErrorHandler so the app always uses our handler
XErrorHandler XSetErrorHandler(XErrorHandler handler) {
    if (!real_XSetErrorHandler) {
        real_XSetErrorHandler = (XSetErrorHandlerFn)dlsym(RTLD_NEXT, "XSetErrorHandler");
    }
    return real_XSetErrorHandler(my_error_handler);
}
