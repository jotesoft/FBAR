.class Lcom/joyemu/fba/o;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/joyemu/fba/FbaGLSurface;->surfaceCreated(Landroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/joyemu/fba/FbaGLSurface;


# direct methods
.method constructor <init>(Lcom/joyemu/fba/FbaGLSurface;)V
    .locals 0

    iput-object p1, p0, Lcom/joyemu/fba/o;->a:Lcom/joyemu/fba/FbaGLSurface;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string v0, "gameThread start"

    invoke-static {v0}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/joyemu/fba/o;->a:Lcom/joyemu/fba/FbaGLSurface;

    invoke-static {v0}, Lcom/joyemu/fba/FbaGLSurface;->a(Lcom/joyemu/fba/FbaGLSurface;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/joyemu/fba/o;->a:Lcom/joyemu/fba/FbaGLSurface;

    invoke-virtual {v0}, Lcom/joyemu/fba/FbaGLSurface;->k()V

    goto :goto_0

    :cond_0
    const-string v0, "gameThread end"

    invoke-static {v0}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    return-void
.end method
