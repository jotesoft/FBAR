.class Lcom/joyemu/fba/a;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/joyemu/fba/FbaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/joyemu/fba/FbaActivity;


# direct methods
.method constructor <init>(Lcom/joyemu/fba/FbaActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/joyemu/fba/a;->a:Lcom/joyemu/fba/FbaActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Lcom/joyemu/fba/a;->a:Lcom/joyemu/fba/FbaActivity;

    invoke-static {v0}, Lcom/joyemu/fba/FbaActivity;->d(Lcom/joyemu/fba/FbaActivity;)Lb/a/a/j;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_a

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    const/16 v3, 0x1000

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/16 p1, 0x3e8

    if-eq v0, p1, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string p1, "handler MESSAGE_SYNC_CLIENT"

    invoke-static {p1}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/joyemu/fba/a;->a:Lcom/joyemu/fba/FbaActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/joyemu/fba/a;->a:Lcom/joyemu/fba/FbaActivity;

    invoke-static {p1}, Lcom/joyemu/fba/FbaActivity;->e(Lcom/joyemu/fba/FbaActivity;)V

    :cond_2
    iget-object p1, p0, Lcom/joyemu/fba/a;->a:Lcom/joyemu/fba/FbaActivity;

    invoke-static {p1}, Lcom/joyemu/fba/FbaActivity;->h(Lcom/joyemu/fba/FbaActivity;)V

    goto/16 :goto_3

    :cond_3
    const-string v0, "handler MESSAGE_SAVED_STATE"

    invoke-static {v0}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/joyemu/fba/a;->a:Lcom/joyemu/fba/FbaActivity;

    invoke-static {v0}, Lcom/joyemu/fba/FbaActivity;->g(Lcom/joyemu/fba/FbaActivity;)Ljava/io/File;

    move-result-object v0

    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {v0, p1}, Lcom/joyemu/fba/FbaActivity;->a(Ljava/io/File;[B)V

    iget-object p1, p0, Lcom/joyemu/fba/a;->a:Lcom/joyemu/fba/FbaActivity;

    iget-object p1, p1, Lcom/joyemu/fba/FbaActivity;->e:Lcom/joyemu/fba/q;

    invoke-interface {p1, v2}, Lcom/joyemu/fba/q;->a(Z)V

    iget-object p1, p0, Lcom/joyemu/fba/a;->a:Lcom/joyemu/fba/FbaActivity;

    iget-object p1, p1, Lcom/joyemu/fba/FbaActivity;->e:Lcom/joyemu/fba/q;

    invoke-interface {p1, v3}, Lcom/joyemu/fba/q;->a(I)V

    iget-object p1, p0, Lcom/joyemu/fba/a;->a:Lcom/joyemu/fba/FbaActivity;

    iget-object p1, p1, Lcom/joyemu/fba/FbaActivity;->e:Lcom/joyemu/fba/q;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/joyemu/fba/q;->a(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    throw p1

    :catch_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    :cond_4
    const-string p1, "handler MESSAGE_RESET_ROM"

    invoke-static {p1}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/joyemu/fba/a;->a:Lcom/joyemu/fba/FbaActivity;

    iget-object p1, p1, Lcom/joyemu/fba/FbaActivity;->e:Lcom/joyemu/fba/q;

    invoke-interface {p1, v3}, Lcom/joyemu/fba/q;->a(I)V

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/joyemu/fba/a;->a:Lcom/joyemu/fba/FbaActivity;

    invoke-static {p1}, Lcom/joyemu/fba/FbaActivity;->d(Lcom/joyemu/fba/FbaActivity;)Lb/a/a/j;

    move-result-object p1

    invoke-virtual {p1}, Lb/a/a/j;->e()V

    goto/16 :goto_3

    :cond_6
    const-string v0, "handler MESSAGE_DISCONNECTED"

    invoke-static {v0}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/joyemu/fba/a;->a:Lcom/joyemu/fba/FbaActivity;

    invoke-static {v0}, Lcom/joyemu/fba/FbaActivity;->o(Lcom/joyemu/fba/FbaActivity;)V

    iget-object v0, p0, Lcom/joyemu/fba/a;->a:Lcom/joyemu/fba/FbaActivity;

    invoke-static {v0}, Lcom/joyemu/fba/FbaActivity;->c(Lcom/joyemu/fba/FbaActivity;)Lcom/joyemu/fba/FbaActivity$c;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/joyemu/fba/a;->a:Lcom/joyemu/fba/FbaActivity;

    invoke-static {v0}, Lcom/joyemu/fba/FbaActivity;->c(Lcom/joyemu/fba/FbaActivity;)Lcom/joyemu/fba/FbaActivity$c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/joyemu/fba/a;->a:Lcom/joyemu/fba/FbaActivity;

    invoke-static {v0, v1}, Lcom/joyemu/fba/FbaActivity;->a(Lcom/joyemu/fba/FbaActivity;Lcom/joyemu/fba/FbaActivity$c;)Lcom/joyemu/fba/FbaActivity$c;

    :cond_7
    const v0, 0x7f0f00d3

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eq p1, v2, :cond_9

    if-eq p1, v3, :cond_8

    goto :goto_2

    :cond_8
    const v0, 0x7f0f0124

    goto :goto_2

    :cond_9
    const v0, 0x7f0f00d2

    :goto_2
    iget-object p1, p0, Lcom/joyemu/fba/a;->a:Lcom/joyemu/fba/FbaActivity;

    invoke-static {p1, v0, v2}, Lcom/joyemu/fba/ToastCompat;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_3

    :cond_a
    const-string p1, "handler MESSAGE_CONNECTED"

    invoke-static {p1}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/joyemu/fba/a;->a:Lcom/joyemu/fba/FbaActivity;

    invoke-static {p1}, Lcom/joyemu/fba/FbaActivity;->d(Lcom/joyemu/fba/FbaActivity;)Lb/a/a/j;

    move-result-object p1

    invoke-virtual {p1}, Lb/a/a/j;->d()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/joyemu/fba/a;->a:Lcom/joyemu/fba/FbaActivity;

    invoke-static {p1}, Lcom/joyemu/fba/FbaActivity;->e(Lcom/joyemu/fba/FbaActivity;)V

    :cond_b
    iget-object p1, p0, Lcom/joyemu/fba/a;->a:Lcom/joyemu/fba/FbaActivity;

    invoke-static {p1, v2}, Lcom/joyemu/fba/FbaActivity;->a(Lcom/joyemu/fba/FbaActivity;Z)Z

    iget-object p1, p0, Lcom/joyemu/fba/a;->a:Lcom/joyemu/fba/FbaActivity;

    invoke-static {p1}, Lcom/joyemu/fba/FbaActivity;->f(Lcom/joyemu/fba/FbaActivity;)V

    iget-object p1, p0, Lcom/joyemu/fba/a;->a:Lcom/joyemu/fba/FbaActivity;

    invoke-static {p1}, Lcom/joyemu/fba/FbaActivity;->d(Lcom/joyemu/fba/FbaActivity;)Lb/a/a/j;

    move-result-object p1

    invoke-virtual {p1}, Lb/a/a/j;->e()V

    iget-object p1, p0, Lcom/joyemu/fba/a;->a:Lcom/joyemu/fba/FbaActivity;

    invoke-static {p1}, Lcom/joyemu/fba/FbaActivity;->c(Lcom/joyemu/fba/FbaActivity;)Lcom/joyemu/fba/FbaActivity$c;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/joyemu/fba/a;->a:Lcom/joyemu/fba/FbaActivity;

    invoke-static {p1}, Lcom/joyemu/fba/FbaActivity;->c(Lcom/joyemu/fba/FbaActivity;)Lcom/joyemu/fba/FbaActivity$c;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object p1, p0, Lcom/joyemu/fba/a;->a:Lcom/joyemu/fba/FbaActivity;

    invoke-static {p1, v1}, Lcom/joyemu/fba/FbaActivity;->a(Lcom/joyemu/fba/FbaActivity;Lcom/joyemu/fba/FbaActivity$c;)Lcom/joyemu/fba/FbaActivity$c;

    :cond_c
    :goto_3
    return-void
.end method
