.class public Lcom/joyemu/fba/FbaGLSurface;
.super Landroid/view/SurfaceView;
.source ""

# interfaces
.implements Lcom/joyemu/fba/q;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Ljava/lang/Runnable;


# instance fields
.field a:Lcom/joyemu/fba/FbaActivity;

.field private b:I

.field private c:I

.field private d:Landroid/graphics/Rect;

.field e:I

.field f:I

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/Thread;

.field private l:Ljava/lang/Thread;

.field m:Lb/a/a/f;

.field private n:J

.field private o:I

.field private p:Z

.field q:I

.field r:Ljava/lang/String;

.field private s:I

.field t:I

.field u:Ljavax/microedition/khronos/egl/EGLContext;

.field v:Ljavax/microedition/khronos/egl/EGL10;

.field w:Ljavax/microedition/khronos/egl/EGLDisplay;

.field x:Ljavax/microedition/khronos/opengles/GL10;

.field y:Ljavax/microedition/khronos/egl/EGLSurface;

.field final z:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x140

    iput v0, p0, Lcom/joyemu/fba/FbaGLSurface;->b:I

    const/16 v0, 0xf0

    iput v0, p0, Lcom/joyemu/fba/FbaGLSurface;->c:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/joyemu/fba/FbaGLSurface;->g:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/joyemu/fba/FbaGLSurface;->h:Z

    iput-boolean v0, p0, Lcom/joyemu/fba/FbaGLSurface;->j:Z

    new-instance v1, Lb/a/a/f;

    invoke-direct {v1}, Lb/a/a/f;-><init>()V

    iput-object v1, p0, Lcom/joyemu/fba/FbaGLSurface;->m:Lb/a/a/f;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/joyemu/fba/FbaGLSurface;->n:J

    iput v0, p0, Lcom/joyemu/fba/FbaGLSurface;->o:I

    iput v0, p0, Lcom/joyemu/fba/FbaGLSurface;->q:I

    iput v0, p0, Lcom/joyemu/fba/FbaGLSurface;->s:I

    iput v0, p0, Lcom/joyemu/fba/FbaGLSurface;->t:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/joyemu/fba/FbaGLSurface;->z:Ljava/lang/Object;

    check-cast p1, Lcom/joyemu/fba/FbaActivity;

    iput-object p1, p0, Lcom/joyemu/fba/FbaGLSurface;->a:Lcom/joyemu/fba/FbaActivity;

    invoke-virtual {p0}, Lcom/joyemu/fba/FbaGLSurface;->g()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0x140

    iput p2, p0, Lcom/joyemu/fba/FbaGLSurface;->b:I

    const/16 p2, 0xf0

    iput p2, p0, Lcom/joyemu/fba/FbaGLSurface;->c:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/joyemu/fba/FbaGLSurface;->g:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/joyemu/fba/FbaGLSurface;->h:Z

    iput-boolean p2, p0, Lcom/joyemu/fba/FbaGLSurface;->j:Z

    new-instance v0, Lb/a/a/f;

    invoke-direct {v0}, Lb/a/a/f;-><init>()V

    iput-object v0, p0, Lcom/joyemu/fba/FbaGLSurface;->m:Lb/a/a/f;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/joyemu/fba/FbaGLSurface;->n:J

    iput p2, p0, Lcom/joyemu/fba/FbaGLSurface;->o:I

    iput p2, p0, Lcom/joyemu/fba/FbaGLSurface;->q:I

    iput p2, p0, Lcom/joyemu/fba/FbaGLSurface;->s:I

    iput p2, p0, Lcom/joyemu/fba/FbaGLSurface;->t:I

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/joyemu/fba/FbaGLSurface;->z:Ljava/lang/Object;

    check-cast p1, Lcom/joyemu/fba/FbaActivity;

    iput-object p1, p0, Lcom/joyemu/fba/FbaGLSurface;->a:Lcom/joyemu/fba/FbaActivity;

    return-void
.end method

.method private a(Ljavax/microedition/khronos/opengles/GL10;Z)V
    .locals 1

    iget-boolean p2, p0, Lcom/joyemu/fba/FbaGLSurface;->p:Z

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/joyemu/fba/FbaGLSurface;->b(Ljavax/microedition/khronos/opengles/GL10;)V

    sget-boolean p2, Lcom/joyemu/fbaapp/f;->s:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/joyemu/fba/FbaGLSurface;->a:Lcom/joyemu/fba/FbaActivity;

    invoke-virtual {p2}, Lcom/joyemu/fba/FbaActivity;->f()V

    :cond_0
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/joyemu/fba/FbaGLSurface;->p:Z

    :cond_1
    iget-boolean p2, p0, Lcom/joyemu/fba/FbaGLSurface;->h:Z

    if-eqz p2, :cond_2

    iget p2, p0, Lcom/joyemu/fba/FbaGLSurface;->s:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    iget-boolean p2, p0, Lcom/joyemu/fba/FbaGLSurface;->g:Z

    if-nez p2, :cond_2

    const/16 p2, 0x4000

    invoke-interface {p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    invoke-static {}, Lcom/joyemu/fba/FbaEmu;->drawGL()I

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/joyemu/fba/FbaGLSurface;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/joyemu/fba/FbaGLSurface;->i:Z

    return p0
.end method

.method private c(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    const/16 v0, 0x1f00

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    const/16 v0, 0x1f02

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    const/16 v0, 0x1f03

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    const/16 v0, 0xbd0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    const/16 v0, 0xc50

    const/16 v1, 0x1101

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    const-string v0, "1"

    invoke-virtual {p0, p1, v0}, Lcom/joyemu/fba/FbaGLSurface;->a(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;)Z

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0, v0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    const/16 v0, 0x1d00

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    const-string v0, "12"

    invoke-virtual {p0, p1, v0}, Lcom/joyemu/fba/FbaGLSurface;->a(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;)Z

    const/16 v0, 0xb71

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    const-string v0, "13"

    invoke-virtual {p0, p1, v0}, Lcom/joyemu/fba/FbaGLSurface;->a(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;)Z

    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    const-string v0, "2"

    invoke-virtual {p0, p1, v0}, Lcom/joyemu/fba/FbaGLSurface;->a(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;)Z

    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, -0x41000000    # -0.5f

    invoke-static {p1, v1, v0, v1, v0}, Landroid/opengl/GLU;->gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    const-string v0, "3"

    invoke-virtual {p0, p1, v0}, Lcom/joyemu/fba/FbaGLSurface;->a(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;)Z

    const/16 v0, 0x4000

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    return-void
.end method

.method private l()V
    .locals 4

    iget-object v0, p0, Lcom/joyemu/fba/FbaGLSurface;->v:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/joyemu/fba/FbaGLSurface;->w:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v0, p0, Lcom/joyemu/fba/FbaGLSurface;->v:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/joyemu/fba/FbaGLSurface;->w:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/joyemu/fba/FbaGLSurface;->y:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    iget-object v0, p0, Lcom/joyemu/fba/FbaGLSurface;->v:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/joyemu/fba/FbaGLSurface;->w:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/joyemu/fba/FbaGLSurface;->u:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v0, p0, Lcom/joyemu/fba/FbaGLSurface;->v:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/joyemu/fba/FbaGLSurface;->w:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    return-void
.end method

.method private m()Z
    .locals 8

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/joyemu/fba/FbaGLSurface;->v:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, p0, Lcom/joyemu/fba/FbaGLSurface;->v:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/joyemu/fba/FbaGLSurface;->w:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/joyemu/fba/FbaGLSurface;->v:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/joyemu/fba/FbaGLSurface;->w:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    const/16 v0, 0x9

    new-array v3, v0, [I

    fill-array-data v3, :array_0

    const/4 v0, 0x1

    new-array v7, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    new-array v6, v0, [I

    iget-object v1, p0, Lcom/joyemu/fba/FbaGLSurface;->v:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/joyemu/fba/FbaGLSurface;->w:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v5, 0x1

    move-object v4, v7

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 v1, 0x0

    aget-object v1, v7, v1

    iget-object v2, p0, Lcom/joyemu/fba/FbaGLSurface;->v:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/joyemu/fba/FbaGLSurface;->w:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 v5, 0x0

    invoke-interface {v2, v3, v1, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    iput-object v2, p0, Lcom/joyemu/fba/FbaGLSurface;->u:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v2, p0, Lcom/joyemu/fba/FbaGLSurface;->v:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/joyemu/fba/FbaGLSurface;->w:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v4

    invoke-interface {v2, v3, v1, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    iput-object v1, p0, Lcom/joyemu/fba/FbaGLSurface;->y:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v1, p0, Lcom/joyemu/fba/FbaGLSurface;->v:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/joyemu/fba/FbaGLSurface;->w:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/joyemu/fba/FbaGLSurface;->y:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/joyemu/fba/FbaGLSurface;->u:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v1, p0, Lcom/joyemu/fba/FbaGLSurface;->u:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v1}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/opengles/GL10;

    iput-object v1, p0, Lcom/joyemu/fba/FbaGLSurface;->x:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v1, p0, Lcom/joyemu/fba/FbaGLSurface;->v:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    iget-object v2, p0, Lcom/joyemu/fba/FbaGLSurface;->v:Ljavax/microedition/khronos/egl/EGL10;

    const/16 v2, 0x3000

    if-eq v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "egl error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    :cond_0
    return v0

    nop

    :array_0
    .array-data 4
        0x3024
        0x5
        0x3023
        0x6
        0x3022
        0x5
        0x3025
        0x0
        0x3038
    .end array-data
.end method

.method private n()V
    .locals 6

    sget-boolean v0, Lcom/joyemu/fbaapp/f;->E:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v0, :cond_4

    sget v0, Lcom/joyemu/fbaapp/f;->B:I

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/joyemu/fba/FbaGLSurface;->e:I

    iget v3, p0, Lcom/joyemu/fba/FbaGLSurface;->f:I

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_0
    if-ne v0, v5, :cond_1

    iget v0, p0, Lcom/joyemu/fba/FbaGLSurface;->c:I

    iget v1, p0, Lcom/joyemu/fba/FbaGLSurface;->b:I

    iget v2, p0, Lcom/joyemu/fba/FbaGLSurface;->e:I

    sub-int/2addr v2, v1

    div-int/2addr v2, v5

    iget v3, p0, Lcom/joyemu/fba/FbaGLSurface;->f:I

    sub-int/2addr v3, v0

    div-int/2addr v3, v5

    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v1, v2

    add-int/2addr v0, v3

    invoke-direct {v4, v2, v3, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_1

    :cond_1
    if-ne v0, v4, :cond_2

    iget v0, p0, Lcom/joyemu/fba/FbaGLSurface;->f:I

    mul-int/lit8 v1, v0, 0x3

    div-int/2addr v1, v3

    iget v2, p0, Lcom/joyemu/fba/FbaGLSurface;->e:I

    sub-int/2addr v2, v1

    div-int/2addr v2, v5

    sub-int v3, v0, v0

    div-int/2addr v3, v5

    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v1, v2

    add-int/2addr v0, v3

    invoke-direct {v4, v2, v3, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_1

    :cond_2
    if-ne v0, v3, :cond_3

    iget v0, p0, Lcom/joyemu/fba/FbaGLSurface;->f:I

    mul-int/lit8 v1, v0, 0x4

    div-int/2addr v1, v4

    iget v2, p0, Lcom/joyemu/fba/FbaGLSurface;->e:I

    sub-int/2addr v2, v1

    div-int/2addr v2, v5

    sub-int v3, v0, v0

    div-int/2addr v3, v5

    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v1, v2

    add-int/2addr v0, v3

    invoke-direct {v4, v2, v3, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/joyemu/fba/FbaGLSurface;->f:I

    iget v1, p0, Lcom/joyemu/fba/FbaGLSurface;->b:I

    mul-int v1, v1, v0

    iget v2, p0, Lcom/joyemu/fba/FbaGLSurface;->c:I

    div-int/2addr v1, v2

    iget v2, p0, Lcom/joyemu/fba/FbaGLSurface;->e:I

    sub-int/2addr v2, v1

    div-int/2addr v2, v5

    sub-int v3, v0, v0

    div-int/2addr v3, v5

    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v1, v2

    add-int/2addr v0, v3

    invoke-direct {v4, v2, v3, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_1

    :cond_4
    sget v0, Lcom/joyemu/fbaapp/f;->B:I

    if-ne v0, v1, :cond_5

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/joyemu/fba/FbaGLSurface;->e:I

    iget v3, p0, Lcom/joyemu/fba/FbaGLSurface;->f:I

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    iput-object v0, p0, Lcom/joyemu/fba/FbaGLSurface;->d:Landroid/graphics/Rect;

    goto :goto_2

    :cond_5
    if-ne v0, v5, :cond_6

    iget v0, p0, Lcom/joyemu/fba/FbaGLSurface;->c:I

    iget v1, p0, Lcom/joyemu/fba/FbaGLSurface;->b:I

    iget v2, p0, Lcom/joyemu/fba/FbaGLSurface;->e:I

    sub-int/2addr v2, v1

    div-int/2addr v2, v5

    iget v3, p0, Lcom/joyemu/fba/FbaGLSurface;->f:I

    sub-int/2addr v3, v0

    div-int/2addr v3, v5

    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v1, v2

    add-int/2addr v0, v3

    invoke-direct {v4, v2, v3, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_1
    iput-object v4, p0, Lcom/joyemu/fba/FbaGLSurface;->d:Landroid/graphics/Rect;

    goto :goto_2

    :cond_6
    if-ne v0, v4, :cond_7

    iget v0, p0, Lcom/joyemu/fba/FbaGLSurface;->e:I

    mul-int/lit8 v1, v0, 0x4

    div-int/2addr v1, v4

    sub-int v2, v0, v0

    div-int/2addr v2, v5

    iget v3, p0, Lcom/joyemu/fba/FbaGLSurface;->f:I

    sub-int/2addr v3, v1

    div-int/2addr v3, v5

    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v0, v2

    add-int/2addr v1, v3

    invoke-direct {v4, v2, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_1

    :cond_7
    if-ne v0, v3, :cond_8

    iget v0, p0, Lcom/joyemu/fba/FbaGLSurface;->e:I

    mul-int/lit8 v1, v0, 0x3

    div-int/2addr v1, v3

    sub-int v2, v0, v0

    div-int/2addr v2, v5

    iget v3, p0, Lcom/joyemu/fba/FbaGLSurface;->f:I

    sub-int/2addr v3, v1

    div-int/2addr v3, v5

    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v0, v2

    add-int/2addr v1, v3

    invoke-direct {v4, v2, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_1

    :cond_8
    iget v0, p0, Lcom/joyemu/fba/FbaGLSurface;->e:I

    iget v1, p0, Lcom/joyemu/fba/FbaGLSurface;->c:I

    mul-int v1, v1, v0

    iget v2, p0, Lcom/joyemu/fba/FbaGLSurface;->b:I

    div-int/2addr v1, v2

    sub-int v2, v0, v0

    div-int/2addr v2, v5

    iget v3, p0, Lcom/joyemu/fba/FbaGLSurface;->f:I

    sub-int/2addr v3, v1

    div-int/2addr v3, v5

    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v0, v2

    add-int/2addr v1, v3

    invoke-direct {v4, v2, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_1

    :goto_2
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    invoke-static {}, Lcom/joyemu/fba/FbaEmu;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/joyemu/fba/FbaGLSurface;->b:I

    invoke-static {}, Lcom/joyemu/fba/FbaEmu;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/joyemu/fba/FbaGLSurface;->c:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/joyemu/fba/FbaGLSurface;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/joyemu/fba/FbaGLSurface;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/joyemu/fba/FbaGLSurface;->h:Z

    iput-boolean v0, p0, Lcom/joyemu/fba/FbaGLSurface;->i:Z

    const-string v0, "emuResumeLast"

    invoke-static {v0}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/graphics/Bitmap;Ljava/lang/String;II)I
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p2, -0x1

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    if-lez p3, :cond_0

    if-lez p4, :cond_0

    const/4 v0, 0x1

    invoke-static {p1, p3, p4, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_0
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p4, 0x64

    invoke-virtual {p1, p3, p4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    const/4 p1, 0x0

    return p1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return p2

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return p2

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return p2
.end method

.method public a(Ljava/lang/String;)I
    .locals 2

    invoke-static {p1}, Lcom/joyemu/fba/FbaEmu;->loadState(Ljava/lang/String;)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emu_loadstate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    return p1
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/joyemu/fba/FbaGLSurface;->t:I

    return-void
.end method

.method a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6

    iget-boolean v0, p0, Lcom/joyemu/fba/FbaGLSurface;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/joyemu/fba/FbaGLSurface;->s:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/joyemu/fba/FbaGLSurface;->g:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/joyemu/fba/FbaGLSurface;->a:Lcom/joyemu/fba/FbaActivity;

    invoke-virtual {v0}, Lcom/joyemu/fba/FbaActivity;->c()I

    iget v0, p0, Lcom/joyemu/fba/FbaGLSurface;->q:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/joyemu/fba/FbaGLSurface;->r:Ljava/lang/String;

    invoke-static {v0}, Lcom/joyemu/fba/FbaEmu;->loadState(Ljava/lang/String;)I

    :goto_0
    iput v1, p0, Lcom/joyemu/fba/FbaGLSurface;->q:I

    goto :goto_1

    :cond_0
    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/joyemu/fba/FbaGLSurface;->r:Ljava/lang/String;

    invoke-static {v0}, Lcom/joyemu/fba/FbaEmu;->saveState(Ljava/lang/String;)I

    iget v0, p0, Lcom/joyemu/fba/FbaGLSurface;->b:I

    iget v2, p0, Lcom/joyemu/fba/FbaGLSurface;->c:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/joyemu/fba/FbaEmu;->drawBmp(Landroid/graphics/Bitmap;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/joyemu/fba/FbaGLSurface;->r:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".png"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x140

    const/16 v5, 0xb4

    invoke-virtual {p0, v0, v2, v4, v5}, Lcom/joyemu/fba/FbaGLSurface;->a(Landroid/graphics/Bitmap;Ljava/lang/String;II)I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {v3}, Lcom/joyemu/fba/FbaEmu;->coreLoop(I)I

    move-result v0

    if-ne v0, v3, :cond_3

    invoke-direct {p0, p1, v1}, Lcom/joyemu/fba/FbaGLSurface;->a(Ljavax/microedition/khronos/opengles/GL10;Z)V

    iget-object p1, p0, Lcom/joyemu/fba/FbaGLSurface;->v:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, p0, Lcom/joyemu/fba/FbaGLSurface;->w:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v1, p0, Lcom/joyemu/fba/FbaGLSurface;->y:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    goto :goto_2

    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/joyemu/fba/FbaGLSurface;->a(Ljavax/microedition/khronos/opengles/GL10;Z)V

    iget-object p1, p0, Lcom/joyemu/fba/FbaGLSurface;->v:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, p0, Lcom/joyemu/fba/FbaGLSurface;->w:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v1, p0, Lcom/joyemu/fba/FbaGLSurface;->y:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    const-wide/16 v0, 0x14

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method public a(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/joyemu/fba/FbaGLSurface;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/joyemu/fba/FbaGLSurface;->j:Z

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lcom/joyemu/fba/FbaGLSurface;->g:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emuSetPause:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method a(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;)Z
    .locals 2

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result p1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "glerror:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " at "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/lang/String;)I
    .locals 5

    invoke-virtual {p0}, Lcom/joyemu/fba/FbaGLSurface;->j()I

    invoke-static {p1}, Lcom/joyemu/fba/FbaEmu;->loadRom(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    sget-boolean v1, Lcom/joyemu/fbaapp/f;->w:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-static {v3}, Lcom/joyemu/fba/FbaEmu;->setSoundEnable(I)I

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/joyemu/fba/FbaEmu;->setSoundEnable(I)I

    :goto_0
    invoke-static {}, Lcom/joyemu/fba/FbaEmu;->getVideoWidth()I

    move-result v1

    iput v1, p0, Lcom/joyemu/fba/FbaGLSurface;->b:I

    invoke-static {}, Lcom/joyemu/fba/FbaEmu;->getVideoHeight()I

    move-result v1

    iput v1, p0, Lcom/joyemu/fba/FbaGLSurface;->c:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video size:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/joyemu/fba/FbaGLSurface;->b:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/joyemu/fba/FbaGLSurface;->c:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "debug"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/joyemu/fba/FbaGLSurface;->h:Z

    iput-boolean v3, p0, Lcom/joyemu/fba/FbaGLSurface;->i:Z

    sput-object p1, Lcom/joyemu/fbaapp/f;->U:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v1, v2}, Lcom/joyemu/fba/FbaEmu;->getRomInfo(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/joyemu/fbaapp/w;->d:I

    iput-boolean v3, p0, Lcom/joyemu/fba/FbaGLSurface;->p:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "emuLoadrom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    return v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/joyemu/fba/FbaGLSurface;->q:I

    return-void
.end method

.method public b(I)V
    .locals 1

    iput p1, p0, Lcom/joyemu/fba/FbaGLSurface;->s:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget p1, Lcom/joyemu/fba/FbaEmu;->a:I

    sget v0, Lcom/joyemu/fba/FbaEmu;->b:I

    invoke-static {p1, v0}, Lcom/joyemu/fba/FbaEmu;->setControl(II)I

    :cond_0
    return-void
.end method

.method public b(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 9

    iget-object v0, p0, Lcom/joyemu/fba/FbaGLSurface;->x:Ljavax/microedition/khronos/opengles/GL10;

    iget v1, p0, Lcom/joyemu/fba/FbaGLSurface;->e:I

    iget v2, p0, Lcom/joyemu/fba/FbaGLSurface;->f:I

    const/4 v3, 0x0

    invoke-interface {v0, v3, v3, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0, v0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    sget v0, Lcom/joyemu/fbaapp/f;->B:I

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, -0x41000000    # -0.5f

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    invoke-static {p1, v2, v1, v2, v1}, Landroid/opengl/GLU;->gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_1

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    const/high16 v3, 0x3f900000    # 1.125f

    const/high16 v4, -0x40700000    # -1.125f

    sget-boolean v0, Lcom/joyemu/fbaapp/f;->E:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/joyemu/fba/FbaGLSurface;->e:I

    int-to-float v5, v0

    mul-float v5, v5, v4

    iget v4, p0, Lcom/joyemu/fba/FbaGLSurface;->f:I

    mul-int/lit8 v6, v4, 0x4

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v0, v0

    mul-float v0, v0, v3

    mul-int/lit8 v4, v4, 0x4

    int-to-float v3, v4

    div-float/2addr v0, v3

    invoke-static {p1, v5, v0, v2, v1}, Landroid/opengl/GLU;->gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_1

    :cond_1
    const/high16 v3, 0x41000000    # 8.0f

    const/high16 v4, -0x3f000000    # -8.0f

    iget v0, p0, Lcom/joyemu/fba/FbaGLSurface;->f:I

    int-to-float v5, v0

    mul-float v5, v5, v4

    iget v4, p0, Lcom/joyemu/fba/FbaGLSurface;->e:I

    mul-int/lit8 v6, v4, 0x9

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v0, v0

    mul-float v0, v0, v3

    mul-int/lit8 v4, v4, 0x9

    int-to-float v3, v4

    div-float/2addr v0, v3

    const/high16 v4, 0x3ec00000    # 0.375f

    sub-float v5, v5, v4

    sub-float v0, v0, v4

    invoke-static {p1, v2, v1, v5, v0}, Landroid/opengl/GLU;->gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_1

    :cond_2
    const/high16 v3, 0x3fc00000    # 1.5f

    const/high16 v4, -0x40400000    # -1.5f

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, -0x40000000    # -2.0f

    const/4 v7, 0x3

    const/4 v8, 0x4

    if-ne v0, v8, :cond_4

    sget-boolean v0, Lcom/joyemu/fbaapp/f;->E:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/joyemu/fba/FbaGLSurface;->e:I

    int-to-float v5, v0

    mul-float v5, v5, v4

    iget v4, p0, Lcom/joyemu/fba/FbaGLSurface;->f:I

    mul-int/lit8 v6, v4, 0x4

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v0, v0

    mul-float v0, v0, v3

    mul-int/lit8 v4, v4, 0x4

    int-to-float v3, v4

    div-float/2addr v0, v3

    invoke-static {p1, v5, v0, v2, v1}, Landroid/opengl/GLU;->gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_1

    :cond_3
    iget v0, p0, Lcom/joyemu/fba/FbaGLSurface;->f:I

    int-to-float v3, v0

    mul-float v3, v3, v6

    iget v4, p0, Lcom/joyemu/fba/FbaGLSurface;->e:I

    mul-int/lit8 v6, v4, 0x3

    int-to-float v6, v6

    div-float/2addr v3, v6

    int-to-float v0, v0

    mul-float v0, v0, v5

    mul-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    div-float/2addr v0, v4

    const/high16 v4, 0x3ec00000    # 0.375f

    sub-float v3, v3, v4

    sub-float v0, v0, v4

    invoke-static {p1, v2, v1, v3, v0}, Landroid/opengl/GLU;->gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_1

    :goto_0
    div-float/2addr v0, v4

    invoke-static {p1, v2, v1, v3, v0}, Landroid/opengl/GLU;->gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_1

    :cond_4
    if-ne v0, v7, :cond_6

    sget-boolean v0, Lcom/joyemu/fbaapp/f;->E:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/joyemu/fba/FbaGLSurface;->e:I

    int-to-float v3, v0

    mul-float v3, v3, v6

    iget v4, p0, Lcom/joyemu/fba/FbaGLSurface;->f:I

    mul-int/lit8 v6, v4, 0x3

    int-to-float v6, v6

    div-float/2addr v3, v6

    int-to-float v0, v0

    mul-float v0, v0, v5

    mul-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    div-float/2addr v0, v4

    invoke-static {p1, v3, v0, v2, v1}, Landroid/opengl/GLU;->gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_1

    :cond_5
    iget v0, p0, Lcom/joyemu/fba/FbaGLSurface;->f:I

    int-to-float v5, v0

    mul-float v5, v5, v4

    iget v4, p0, Lcom/joyemu/fba/FbaGLSurface;->e:I

    mul-int/lit8 v6, v4, 0x4

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v0, v0

    mul-float v0, v0, v3

    mul-int/lit8 v4, v4, 0x4

    int-to-float v3, v4

    div-float/2addr v0, v3

    const/high16 v4, 0x3e000000    # 0.125f

    sub-float v5, v5, v4

    sub-float v0, v0, v4

    invoke-static {p1, v2, v1, v5, v0}, Landroid/opengl/GLU;->gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto :goto_1

    :cond_6
    sget-boolean v0, Lcom/joyemu/fbaapp/f;->E:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/joyemu/fba/FbaGLSurface;->b:I

    iget v3, p0, Lcom/joyemu/fba/FbaGLSurface;->f:I

    mul-int v4, v0, v3

    iget v5, p0, Lcom/joyemu/fba/FbaGLSurface;->c:I

    iget v6, p0, Lcom/joyemu/fba/FbaGLSurface;->e:I

    mul-int v7, v5, v6

    if-le v4, v7, :cond_7

    int-to-float v4, v0

    mul-float v4, v4, v2

    int-to-float v7, v3

    mul-float v4, v4, v7

    mul-int v7, v5, v6

    int-to-float v7, v7

    div-float/2addr v4, v7

    int-to-float v0, v0

    mul-float v0, v0, v1

    int-to-float v3, v3

    mul-float v0, v0, v3

    mul-int v5, v5, v6

    int-to-float v3, v5

    div-float/2addr v0, v3

    invoke-static {p1, v2, v1, v4, v0}, Landroid/opengl/GLU;->gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto :goto_1

    :cond_7
    int-to-float v4, v5

    mul-float v4, v4, v2

    int-to-float v7, v6

    mul-float v4, v4, v7

    mul-int v7, v0, v3

    int-to-float v7, v7

    div-float/2addr v4, v7

    int-to-float v5, v5

    mul-float v5, v5, v1

    int-to-float v6, v6

    mul-float v5, v5, v6

    mul-int v0, v0, v3

    int-to-float v0, v0

    div-float/2addr v5, v0

    invoke-static {p1, v4, v5, v2, v1}, Landroid/opengl/GLU;->gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto :goto_1

    :cond_8
    iget v0, p0, Lcom/joyemu/fba/FbaGLSurface;->b:I

    int-to-float v3, v0

    mul-float v3, v3, v2

    iget v4, p0, Lcom/joyemu/fba/FbaGLSurface;->f:I

    int-to-float v5, v4

    mul-float v3, v3, v5

    iget v5, p0, Lcom/joyemu/fba/FbaGLSurface;->c:I

    iget v6, p0, Lcom/joyemu/fba/FbaGLSurface;->e:I

    mul-int v7, v5, v6

    int-to-float v7, v7

    div-float/2addr v3, v7

    int-to-float v0, v0

    mul-float v0, v0, v1

    int-to-float v4, v4

    mul-float v0, v0, v4

    mul-int v5, v5, v6

    int-to-float v4, v5

    goto/16 :goto_0

    :goto_1
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    return-void
.end method

.method public c()V
    .locals 2

    iget-boolean v0, p0, Lcom/joyemu/fba/FbaGLSurface;->h:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/joyemu/fbaapp/f;->w:Z

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/joyemu/fba/FbaEmu;->setSoundEnable(I)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/joyemu/fba/FbaEmu;->setSoundEnable(I)I

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/joyemu/fba/FbaGLSurface;->n()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/joyemu/fba/FbaGLSurface;->o:I

    iput-boolean v1, p0, Lcom/joyemu/fba/FbaGLSurface;->p:Z

    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GameLoadState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/joyemu/fba/FbaGLSurface;->j:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/joyemu/fba/FbaGLSurface;->q:I

    iput-object p1, p0, Lcom/joyemu/fba/FbaGLSurface;->r:Ljava/lang/String;

    return v0
.end method

.method public d()V
    .locals 3

    const-string v0, "onSaveState"

    invoke-static {v0}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/joyemu/fba/FbaGLSurface;->j:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/joyemu/fba/FbaGLSurface;->a(Z)V

    new-instance v0, Lcom/joyemu/fbaapp/Fa;

    iget-object v1, p0, Lcom/joyemu/fba/FbaGLSurface;->a:Lcom/joyemu/fba/FbaActivity;

    sget-object v2, Lcom/joyemu/fbaapp/f;->U:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/joyemu/fbaapp/Fa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/joyemu/fbaapp/Fa;->a(Lcom/joyemu/fba/q;)V

    invoke-virtual {v0}, Lcom/joyemu/fbaapp/Fa;->b()V

    return-void
.end method

.method public d(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GameSaveState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/joyemu/fba/FbaGLSurface;->j:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/joyemu/fba/FbaGLSurface;->q:I

    iput-object p1, p0, Lcom/joyemu/fba/FbaGLSurface;->r:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public e()V
    .locals 3

    const-string v0, "onLoadState"

    invoke-static {v0}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/joyemu/fba/FbaGLSurface;->j:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/joyemu/fba/FbaGLSurface;->a(Z)V

    new-instance v0, Lcom/joyemu/fbaapp/Fa;

    iget-object v1, p0, Lcom/joyemu/fba/FbaGLSurface;->a:Lcom/joyemu/fba/FbaActivity;

    sget-object v2, Lcom/joyemu/fbaapp/f;->U:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/joyemu/fbaapp/Fa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/joyemu/fbaapp/Fa;->a(Lcom/joyemu/fba/q;)V

    invoke-virtual {v0}, Lcom/joyemu/fbaapp/Fa;->a()V

    return-void
.end method

.method public f()V
    .locals 2

    const-string v0, "onRestart"

    invoke-static {v0}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/joyemu/fba/FbaGLSurface;->j:Z

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/joyemu/fba/FbaGLSurface;->a(Z)V

    sget-object v1, Lcom/joyemu/fbaapp/f;->U:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/joyemu/fba/FbaGLSurface;->b(Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/joyemu/fba/FbaGLSurface;->a(Z)V

    return-void
.end method

.method public g()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    sget v0, Lcom/joyemu/fbaapp/f;->X:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    sput-boolean v2, Lcom/joyemu/fbaapp/f;->Y:Z

    goto :goto_0

    :cond_0
    sput-boolean v1, Lcom/joyemu/fbaapp/f;->Y:Z

    :goto_0
    invoke-virtual {p0, v2}, Landroid/view/SurfaceView;->setFocusable(Z)V

    invoke-virtual {p0, v2}, Landroid/view/SurfaceView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestFocus()Z

    invoke-virtual {p0}, Lcom/joyemu/fba/FbaGLSurface;->i()I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/joyemu/fba/FbaGLSurface;->n:J

    iput v1, p0, Lcom/joyemu/fba/FbaGLSurface;->o:I

    const-string v0, "surface Initialise"

    invoke-static {v0}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    return-void
.end method

.method getScreenShotPath()Ljava/lang/String;
    .locals 6

    sget-object v0, Lcom/joyemu/fbaapp/f;->U:Ljava/lang/String;

    invoke-static {v0}, Lcom/joyemu/fbaapp/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    const/16 v4, 0x20

    if-ge v2, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/joyemu/fbaapp/f;->i:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ".png"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-lt v2, v4, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "picpath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    return-object v3
.end method

.method public h()I
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/joyemu/fba/FbaGLSurface;->i:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/joyemu/fba/FbaGLSurface;->g:Z

    invoke-static {}, Lcom/joyemu/fba/FbaEmu;->deinit()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "emu_exit()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    return v0
.end method

.method public i()I
    .locals 4

    sget-boolean v0, Lcom/joyemu/fbaapp/f;->Y:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/joyemu/fba/FbaEmu;->init(I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/joyemu/fba/FbaEmu;->init(I)I

    move-result v0

    :goto_0
    sget-boolean v3, Lcom/joyemu/fbaapp/f;->y:Z

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/joyemu/fba/FbaEmu;->setGLQuality(I)I

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lcom/joyemu/fba/FbaEmu;->setGLQuality(I)I

    :goto_1
    sget v3, Lcom/joyemu/fbaapp/f;->z:I

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x2

    :goto_2
    invoke-static {v3, v1}, Lcom/joyemu/fba/FbaEmu;->setFilter(II)V

    iput-boolean v2, p0, Lcom/joyemu/fba/FbaGLSurface;->i:Z

    iput-boolean v2, p0, Lcom/joyemu/fba/FbaGLSurface;->g:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "emu_init():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    return v0
.end method

.method public j()I
    .locals 3

    iget-boolean v0, p0, Lcom/joyemu/fba/FbaGLSurface;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/joyemu/fba/FbaGLSurface;->h:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/joyemu/fba/FbaGLSurface;->g:Z

    invoke-static {}, Lcom/joyemu/fba/FbaEmu;->unloadRom()I

    move-result v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "emu_unload"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    :cond_0
    const-string v0, ""

    sput-object v0, Lcom/joyemu/fbaapp/f;->U:Ljava/lang/String;

    return v1
.end method

.method k()V
    .locals 6

    iget-boolean v0, p0, Lcom/joyemu/fba/FbaGLSurface;->h:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/joyemu/fba/FbaGLSurface;->s:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/joyemu/fba/FbaGLSurface;->g:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/joyemu/fba/FbaGLSurface;->a:Lcom/joyemu/fba/FbaActivity;

    invoke-virtual {v0}, Lcom/joyemu/fba/FbaActivity;->c()I

    iget v0, p0, Lcom/joyemu/fba/FbaGLSurface;->q:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/joyemu/fba/FbaGLSurface;->r:Ljava/lang/String;

    invoke-static {v0}, Lcom/joyemu/fba/FbaEmu;->loadState(Ljava/lang/String;)I

    :goto_0
    iput v2, p0, Lcom/joyemu/fba/FbaGLSurface;->q:I

    goto :goto_1

    :cond_0
    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/joyemu/fba/FbaGLSurface;->r:Ljava/lang/String;

    invoke-static {v0}, Lcom/joyemu/fba/FbaEmu;->saveState(Ljava/lang/String;)I

    iget v0, p0, Lcom/joyemu/fba/FbaGLSurface;->b:I

    iget v1, p0, Lcom/joyemu/fba/FbaGLSurface;->c:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/joyemu/fba/FbaEmu;->drawBmp(Landroid/graphics/Bitmap;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/joyemu/fba/FbaGLSurface;->r:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".png"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x140

    const/16 v5, 0xb4

    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/joyemu/fba/FbaGLSurface;->a(Landroid/graphics/Bitmap;Ljava/lang/String;II)I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {v3}, Lcom/joyemu/fba/FbaEmu;->coreLoop(I)I

    goto :goto_2

    :cond_2
    const-wide/16 v0, 0x14

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/joyemu/fba/FbaGLSurface;->z:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/joyemu/fba/FbaGLSurface;->z:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public onClose()V
    .locals 2

    const-string v0, "onClose"

    invoke-static {v0}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/joyemu/fba/FbaGLSurface;->z:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/joyemu/fba/FbaGLSurface;->z:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/joyemu/fba/FbaGLSurface;->j:Z

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/joyemu/fba/FbaGLSurface;->a(Z)V

    iput-boolean v0, p0, Lcom/joyemu/fba/FbaGLSurface;->i:Z

    :try_start_1
    iget-object v0, p0, Lcom/joyemu/fba/FbaGLSurface;->k:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/joyemu/fba/FbaGLSurface;->k:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    :cond_0
    iget-object v0, p0, Lcom/joyemu/fba/FbaGLSurface;->l:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/joyemu/fba/FbaGLSurface;->l:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/joyemu/fba/FbaGLSurface;->l:Ljava/lang/Thread;

    iput-object v0, p0, Lcom/joyemu/fba/FbaGLSurface;->k:Ljava/lang/Thread;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    invoke-virtual {p0}, Lcom/joyemu/fba/FbaGLSurface;->j()I

    invoke-virtual {p0}, Lcom/joyemu/fba/FbaGLSurface;->h()I

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    iput p1, p0, Lcom/joyemu/fba/FbaGLSurface;->e:I

    iput p2, p0, Lcom/joyemu/fba/FbaGLSurface;->f:I

    iget v0, p0, Lcom/joyemu/fba/FbaGLSurface;->e:I

    iget v1, p0, Lcom/joyemu/fba/FbaGLSurface;->f:I

    if-le v0, v1, :cond_0

    sget v0, Lcom/joyemu/fbaapp/f;->D:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    sget v0, Lcom/joyemu/fbaapp/f;->D:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/joyemu/fbaapp/f;->E:Z

    :cond_1
    invoke-direct {p0}, Lcom/joyemu/fba/FbaGLSurface;->n()V

    const-string v0, "onSizeChanged()..."

    invoke-static {v0}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;->onSizeChanged(IIII)V

    return-void
.end method

.method public run()V
    .locals 6

    invoke-direct {p0}, Lcom/joyemu/fba/FbaGLSurface;->m()Z

    iget-object v0, p0, Lcom/joyemu/fba/FbaGLSurface;->x:Ljavax/microedition/khronos/opengles/GL10;

    invoke-direct {p0, v0}, Lcom/joyemu/fba/FbaGLSurface;->c(Ljavax/microedition/khronos/opengles/GL10;)V

    sget-boolean v0, Lcom/joyemu/fbaapp/f;->Y:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/joyemu/fba/FbaEmu;->init(I)I

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcom/joyemu/fba/FbaEmu;->init(I)I

    :goto_0
    const-string v0, "drawThread start"

    invoke-static {v0}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/joyemu/fba/FbaGLSurface;->i:Z

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/joyemu/fbaapp/f;->Y:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/joyemu/fba/FbaGLSurface;->x:Ljavax/microedition/khronos/opengles/GL10;

    invoke-direct {p0, v0, v1}, Lcom/joyemu/fba/FbaGLSurface;->a(Ljavax/microedition/khronos/opengles/GL10;Z)V

    iget-object v0, p0, Lcom/joyemu/fba/FbaGLSurface;->v:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/joyemu/fba/FbaGLSurface;->w:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/joyemu/fba/FbaGLSurface;->y:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    const-wide/16 v3, 0xa

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/joyemu/fba/FbaGLSurface;->x:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {p0, v0}, Lcom/joyemu/fba/FbaGLSurface;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    :goto_2
    iget v0, p0, Lcom/joyemu/fba/FbaGLSurface;->q:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/joyemu/fba/FbaGLSurface;->getScreenShotPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v3, p0, Lcom/joyemu/fba/FbaGLSurface;->b:I

    iget v4, p0, Lcom/joyemu/fba/FbaGLSurface;->c:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Lcom/joyemu/fba/FbaEmu;->drawBmp(Landroid/graphics/Bitmap;)I

    invoke-virtual {p0, v3, v0, v2, v2}, Lcom/joyemu/fba/FbaGLSurface;->a(Landroid/graphics/Bitmap;Ljava/lang/String;II)I

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    iput v2, p0, Lcom/joyemu/fba/FbaGLSurface;->q:I

    goto :goto_1

    :cond_4
    const-string v0, "drawThread end"

    invoke-static {v0}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/joyemu/fba/FbaGLSurface;->l()V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    iput p3, p0, Lcom/joyemu/fba/FbaGLSurface;->e:I

    iput p4, p0, Lcom/joyemu/fba/FbaGLSurface;->f:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/joyemu/fba/FbaGLSurface;->p:Z

    const-string p1, "surfaceChanged()..."

    invoke-static {p1}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    iget-boolean p1, p0, Lcom/joyemu/fba/FbaGLSurface;->h:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/joyemu/fba/FbaGLSurface;->i:Z

    :cond_0
    sget-boolean p1, Lcom/joyemu/fbaapp/f;->Y:Z

    if-eqz p1, :cond_1

    new-instance p1, Lcom/joyemu/fba/o;

    invoke-direct {p1, p0}, Lcom/joyemu/fba/o;-><init>(Lcom/joyemu/fba/FbaGLSurface;)V

    iput-object p1, p0, Lcom/joyemu/fba/FbaGLSurface;->l:Ljava/lang/Thread;

    iget-object p1, p0, Lcom/joyemu/fba/FbaGLSurface;->l:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_1
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/joyemu/fba/FbaGLSurface;->k:Ljava/lang/Thread;

    iget-object p1, p0, Lcom/joyemu/fba/FbaGLSurface;->k:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const-string p1, "surfaceCreated()..."

    invoke-static {p1}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/joyemu/fba/FbaGLSurface;->i:Z

    const-string p1, "surfaceDestroyed()..."

    invoke-static {p1}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    return-void
.end method
