.class abstract Lb/a/a/j$c;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lb/a/a/j;


# direct methods
.method private constructor <init>(Lb/a/a/j;)V
    .locals 0

    iput-object p1, p0, Lb/a/a/j$c;->a:Lb/a/a/j;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/a/j;Lb/a/a/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lb/a/a/j$c;-><init>(Lb/a/a/j;)V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method protected abstract b()V
.end method

.method public run()V
    .locals 4

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0}, Lb/a/a/j$c;->b()V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v1, p0, Lb/a/a/j$c;->a:Lb/a/a/j;

    invoke-static {v1}, Lb/a/a/j;->a(Lb/a/a/j;)Lb/a/a/j$e;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x3

    goto :goto_1

    :catch_1
    const/4 v1, 0x2

    :goto_1
    iget-object v2, p0, Lb/a/a/j$c;->a:Lb/a/a/j;

    invoke-static {v2}, Lb/a/a/j;->b(Lb/a/a/j;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
