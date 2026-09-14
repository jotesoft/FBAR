.class Lcom/joyemu/fba/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/joyemu/fba/FbaActivity;->a()V
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

    iput-object p1, p0, Lcom/joyemu/fba/e;->a:Lcom/joyemu/fba/FbaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x1

    sput v0, Lcom/joyemu/fbaapp/f;->activePlayersMask:I

    const/4 v0, 0x0

    sput v0, Lcom/joyemu/fbaapp/f;->K:I

    const/4 v1, 0x4

    new-array v2, v1, [I

    sput-object v2, Lcom/joyemu/fbaapp/f;->L:[I

    new-array v1, v1, [I

    sput-object v1, Lcom/joyemu/fbaapp/f;->M:[I

    sget-object v1, Lcom/joyemu/fbaapp/f;->M:[I

    const/4 v2, 0x3

    const/4 v3, -0x1

    aput v3, v1, v2

    const/4 v4, 0x2

    aput v3, v1, v4

    const/4 v4, 0x1

    aput v3, v1, v4

    aput v3, v1, v0

    iget-object v1, p0, Lcom/joyemu/fba/e;->a:Lcom/joyemu/fba/FbaActivity;

    iget v3, v1, Lcom/joyemu/fba/FbaActivity;->h:I

    if-ne v3, v2, :cond_0

    iget-object v2, v1, Lcom/joyemu/fba/FbaActivity;->e:Lcom/joyemu/fba/q;

    invoke-interface {v2}, Lcom/joyemu/fba/q;->a()I

    move-result v2

    :goto_0
    iput v2, v1, Lcom/joyemu/fba/FbaActivity;->i:I

    goto :goto_1

    :cond_0
    iget-object v2, v1, Lcom/joyemu/fba/FbaActivity;->e:Lcom/joyemu/fba/q;

    invoke-static {v1}, Lcom/joyemu/fba/FbaActivity;->a(Lcom/joyemu/fba/FbaActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/joyemu/fba/q;->b(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/joyemu/fba/FbaActivity;->i:I

    iget-object v1, p0, Lcom/joyemu/fba/e;->a:Lcom/joyemu/fba/FbaActivity;

    iget v2, v1, Lcom/joyemu/fba/FbaActivity;->i:I

    if-eqz v2, :cond_1

    iget-object v1, v1, Lcom/joyemu/fba/FbaActivity;->j:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/joyemu/fba/e;->a:Lcom/joyemu/fba/FbaActivity;

    iget v2, v2, Lcom/joyemu/fba/FbaActivity;->i:I

    const-string v3, "game"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/joyemu/fba/e;->a:Lcom/joyemu/fba/FbaActivity;

    invoke-virtual {v2, v4, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/joyemu/fba/e;->a:Lcom/joyemu/fba/FbaActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_1
    iget-object v1, p0, Lcom/joyemu/fba/e;->a:Lcom/joyemu/fba/FbaActivity;

    iget v2, v1, Lcom/joyemu/fba/FbaActivity;->h:I

    if-ne v2, v4, :cond_2

    iget-object v2, v1, Lcom/joyemu/fba/FbaActivity;->e:Lcom/joyemu/fba/q;

    invoke-static {v1}, Lcom/joyemu/fba/FbaActivity;->b(Lcom/joyemu/fba/FbaActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/joyemu/fba/q;->a(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/joyemu/fba/e;->a:Lcom/joyemu/fba/FbaActivity;

    iget-object v1, v1, Lcom/joyemu/fba/FbaActivity;->e:Lcom/joyemu/fba/q;

    invoke-interface {v1, v0}, Lcom/joyemu/fba/q;->a(Z)V

    iget-object v0, p0, Lcom/joyemu/fba/e;->a:Lcom/joyemu/fba/FbaActivity;

    iget-object v0, v0, Lcom/joyemu/fba/FbaActivity;->j:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method
