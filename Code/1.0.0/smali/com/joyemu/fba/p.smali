.class Lcom/joyemu/fba/p;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/joyemu/fba/FbaView;->surfaceCreated(Landroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/joyemu/fba/FbaView;


# direct methods
.method constructor <init>(Lcom/joyemu/fba/FbaView;)V
    .locals 0

    iput-object p1, p0, Lcom/joyemu/fba/p;->a:Lcom/joyemu/fba/FbaView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lcom/joyemu/fba/p;->a:Lcom/joyemu/fba/FbaView;

    invoke-static {v0}, Lcom/joyemu/fba/FbaView;->a(Lcom/joyemu/fba/FbaView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/joyemu/fba/p;->a:Lcom/joyemu/fba/FbaView;

    invoke-virtual {v0}, Lcom/joyemu/fba/FbaView;->k()V

    goto :goto_0

    :cond_0
    return-void
.end method
