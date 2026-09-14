.class Lcom/joyemu/fba/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/joyemu/fba/FbaActivity;->e()V
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

    iput-object p1, p0, Lcom/joyemu/fba/c;->a:Lcom/joyemu/fba/FbaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/joyemu/fba/c;->a:Lcom/joyemu/fba/FbaActivity;

    iget-object v0, v0, Lcom/joyemu/fba/FbaActivity;->u:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/joyemu/fba/c;->a:Lcom/joyemu/fba/FbaActivity;

    iget-object v0, v0, Lcom/joyemu/fba/FbaActivity;->u:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/joyemu/fba/c;->a:Lcom/joyemu/fba/FbaActivity;

    iget-object v0, v0, Lcom/joyemu/fba/FbaActivity;->e:Lcom/joyemu/fba/q;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/joyemu/fba/q;->a(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/joyemu/fba/c;->a:Lcom/joyemu/fba/FbaActivity;

    iget-object v0, v0, Lcom/joyemu/fba/FbaActivity;->e:Lcom/joyemu/fba/q;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/joyemu/fba/q;->a(Z)V

    iget-object v0, p0, Lcom/joyemu/fba/c;->a:Lcom/joyemu/fba/FbaActivity;

    iget-object v0, v0, Lcom/joyemu/fba/FbaActivity;->u:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method
