.class Lcom/joyemu/fba/FbaActivity$c;
.super Landroid/app/ProgressDialog;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/joyemu/fba/FbaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private a:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic b:Lcom/joyemu/fba/FbaActivity;


# direct methods
.method public constructor <init>(Lcom/joyemu/fba/FbaActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/joyemu/fba/FbaActivity$c;->b:Lcom/joyemu/fba/FbaActivity;

    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {p0, p1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {p0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/joyemu/fba/FbaActivity$c;->a:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/joyemu/fba/FbaActivity$c;->a:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/joyemu/fba/FbaActivity$c;->a:Landroid/content/DialogInterface$OnClickListener;

    const/4 v0, -0x1

    invoke-interface {p1, p0, v0}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ProgressDialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/joyemu/fba/FbaActivity$c;->b:Lcom/joyemu/fba/FbaActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/joyemu/fba/FbaActivity;->a(Lcom/joyemu/fba/FbaActivity;Lcom/joyemu/fba/FbaActivity$c;)Lcom/joyemu/fba/FbaActivity$c;

    iget-object p1, p0, Lcom/joyemu/fba/FbaActivity$c;->b:Lcom/joyemu/fba/FbaActivity;

    invoke-static {p1}, Lcom/joyemu/fba/FbaActivity;->d(Lcom/joyemu/fba/FbaActivity;)Lb/a/a/j;

    move-result-object p1

    invoke-virtual {p1}, Lb/a/a/j;->c()V

    iget-object p1, p0, Lcom/joyemu/fba/FbaActivity$c;->b:Lcom/joyemu/fba/FbaActivity;

    invoke-static {p1, v0}, Lcom/joyemu/fba/FbaActivity;->a(Lcom/joyemu/fba/FbaActivity;Lb/a/a/j;)Lb/a/a/j;

    iget-object p1, p0, Lcom/joyemu/fba/FbaActivity$c;->b:Lcom/joyemu/fba/FbaActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/joyemu/fba/FbaActivity;->a(Lcom/joyemu/fba/FbaActivity;Z)Z

    return-void
.end method
