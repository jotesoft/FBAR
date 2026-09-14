.class Lcom/joyemu/fba/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/joyemu/fba/FbaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:F

.field private b:F

.field final synthetic c:Lcom/joyemu/fba/FbaActivity;


# direct methods
.method constructor <init>(Lcom/joyemu/fba/FbaActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/joyemu/fba/f;->c:Lcom/joyemu/fba/FbaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/joyemu/fba/f;->c:Lcom/joyemu/fba/FbaActivity;

    invoke-static {p1}, Lcom/joyemu/fba/FbaActivity;->j(Lcom/joyemu/fba/FbaActivity;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/joyemu/fba/f;->a:F

    iget-object p1, p0, Lcom/joyemu/fba/f;->c:Lcom/joyemu/fba/FbaActivity;

    invoke-static {p1}, Lcom/joyemu/fba/FbaActivity;->k(Lcom/joyemu/fba/FbaActivity;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/joyemu/fba/f;->b:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/joyemu/fba/f;->c:Lcom/joyemu/fba/FbaActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/joyemu/fba/f;->a:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {p1, v0}, Lcom/joyemu/fba/FbaActivity;->b(Lcom/joyemu/fba/FbaActivity;I)I

    iget-object p1, p0, Lcom/joyemu/fba/f;->c:Lcom/joyemu/fba/FbaActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v0, p0, Lcom/joyemu/fba/f;->b:F

    add-float/2addr p2, v0

    float-to-int p2, p2

    invoke-static {p1, p2}, Lcom/joyemu/fba/FbaActivity;->c(Lcom/joyemu/fba/FbaActivity;I)I

    iget-object p1, p0, Lcom/joyemu/fba/f;->c:Lcom/joyemu/fba/FbaActivity;

    iget-object p2, p1, Lcom/joyemu/fba/FbaActivity;->l:Lcom/joyemu/fba/FbaActivity$a;

    invoke-static {p1}, Lcom/joyemu/fba/FbaActivity;->j(Lcom/joyemu/fba/FbaActivity;)I

    move-result p1

    iget-object v0, p0, Lcom/joyemu/fba/f;->c:Lcom/joyemu/fba/FbaActivity;

    invoke-static {v0}, Lcom/joyemu/fba/FbaActivity;->k(Lcom/joyemu/fba/FbaActivity;)I

    move-result v0

    const/4 v1, -0x1

    invoke-virtual {p2, p1, v0, v1, v1}, Landroid/widget/PopupWindow;->update(IIII)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
