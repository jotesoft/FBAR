.class Lcom/joyemu/fba/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/joyemu/fba/FbaActivity$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/joyemu/fba/FbaActivity$a;


# direct methods
.method constructor <init>(Lcom/joyemu/fba/FbaActivity$a;)V
    .locals 0

    iput-object p1, p0, Lcom/joyemu/fba/n;->a:Lcom/joyemu/fba/FbaActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x3dcccccd    # 0.1f

    packed-switch p1, :pswitch_data_0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    goto/16 :goto_4

    :pswitch_0
    iget-object p1, p0, Lcom/joyemu/fba/n;->a:Lcom/joyemu/fba/FbaActivity$a;

    iget-object p1, p1, Lcom/joyemu/fba/FbaActivity$a;->m:Lcom/joyemu/fba/FbaActivity;

    iget-object p1, p1, Lcom/joyemu/fba/FbaActivity;->c:Lb/a/a/h;

    invoke-interface {p1}, Lb/a/a/h;->getStickScale()F

    move-result v1

    sub-float/2addr v1, v0

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/joyemu/fba/n;->a:Lcom/joyemu/fba/FbaActivity$a;

    iget-object p1, p1, Lcom/joyemu/fba/FbaActivity$a;->m:Lcom/joyemu/fba/FbaActivity;

    iget-object p1, p1, Lcom/joyemu/fba/FbaActivity;->c:Lb/a/a/h;

    invoke-interface {p1}, Lb/a/a/h;->getStickScale()F

    move-result v1

    add-float/2addr v1, v0

    :goto_0
    invoke-interface {p1, v1}, Lb/a/a/h;->setStickScale(F)V

    goto/16 :goto_4

    :pswitch_2
    iget-object p1, p0, Lcom/joyemu/fba/n;->a:Lcom/joyemu/fba/FbaActivity$a;

    iget-object p1, p1, Lcom/joyemu/fba/FbaActivity$a;->m:Lcom/joyemu/fba/FbaActivity;

    iget-object p1, p1, Lcom/joyemu/fba/FbaActivity;->c:Lb/a/a/h;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lb/a/a/h;->b(Z)V

    iget-object p1, p0, Lcom/joyemu/fba/n;->a:Lcom/joyemu/fba/FbaActivity$a;

    iget-object p1, p1, Lcom/joyemu/fba/FbaActivity$a;->m:Lcom/joyemu/fba/FbaActivity;

    iget-object p1, p1, Lcom/joyemu/fba/FbaActivity;->c:Lb/a/a/h;

    invoke-interface {p1, v1}, Lb/a/a/h;->setEditMode(Z)V

    goto :goto_1

    :pswitch_3
    iget-object p1, p0, Lcom/joyemu/fba/n;->a:Lcom/joyemu/fba/FbaActivity$a;

    iget-object p1, p1, Lcom/joyemu/fba/FbaActivity$a;->m:Lcom/joyemu/fba/FbaActivity;

    iget-object p1, p1, Lcom/joyemu/fba/FbaActivity;->c:Lb/a/a/h;

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lb/a/a/h;->a(I)V

    goto :goto_4

    :pswitch_4
    iget-object p1, p0, Lcom/joyemu/fba/n;->a:Lcom/joyemu/fba/FbaActivity$a;

    iget-object p1, p1, Lcom/joyemu/fba/FbaActivity$a;->m:Lcom/joyemu/fba/FbaActivity;

    iget-object p1, p1, Lcom/joyemu/fba/FbaActivity;->c:Lb/a/a/h;

    invoke-interface {p1, v1}, Lb/a/a/h;->setEditMode(Z)V

    iget-object p1, p0, Lcom/joyemu/fba/n;->a:Lcom/joyemu/fba/FbaActivity$a;

    iget-object p1, p1, Lcom/joyemu/fba/FbaActivity$a;->m:Lcom/joyemu/fba/FbaActivity;

    iget-object p1, p1, Lcom/joyemu/fba/FbaActivity;->c:Lb/a/a/h;

    invoke-interface {p1, v1}, Lb/a/a/h;->b(Z)V

    :goto_1
    iget-object p1, p0, Lcom/joyemu/fba/n;->a:Lcom/joyemu/fba/FbaActivity$a;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object p1, p0, Lcom/joyemu/fba/n;->a:Lcom/joyemu/fba/FbaActivity$a;

    iget-object p1, p1, Lcom/joyemu/fba/FbaActivity$a;->m:Lcom/joyemu/fba/FbaActivity;

    iget-object p1, p1, Lcom/joyemu/fba/FbaActivity;->e:Lcom/joyemu/fba/q;

    invoke-interface {p1, v1}, Lcom/joyemu/fba/q;->a(Z)V

    goto :goto_4

    :pswitch_5
    iget-object p1, p0, Lcom/joyemu/fba/n;->a:Lcom/joyemu/fba/FbaActivity$a;

    iget-object p1, p1, Lcom/joyemu/fba/FbaActivity$a;->m:Lcom/joyemu/fba/FbaActivity;

    iget-object p1, p1, Lcom/joyemu/fba/FbaActivity;->c:Lb/a/a/h;

    invoke-interface {p1}, Lb/a/a/h;->getButtonsScale()F

    move-result v1

    sub-float/2addr v1, v0

    goto :goto_2

    :pswitch_6
    iget-object p1, p0, Lcom/joyemu/fba/n;->a:Lcom/joyemu/fba/FbaActivity$a;

    iget-object p1, p1, Lcom/joyemu/fba/FbaActivity$a;->m:Lcom/joyemu/fba/FbaActivity;

    iget-object p1, p1, Lcom/joyemu/fba/FbaActivity;->c:Lb/a/a/h;

    invoke-interface {p1}, Lb/a/a/h;->getButtonsScale()F

    move-result v1

    add-float/2addr v1, v0

    :goto_2
    invoke-interface {p1, v1}, Lb/a/a/h;->setButtonsScale(F)V

    goto :goto_4

    :pswitch_7
    iget-object p1, p0, Lcom/joyemu/fba/n;->a:Lcom/joyemu/fba/FbaActivity$a;

    iget-object p1, p1, Lcom/joyemu/fba/FbaActivity$a;->m:Lcom/joyemu/fba/FbaActivity;

    iget-object p1, p1, Lcom/joyemu/fba/FbaActivity;->c:Lb/a/a/h;

    invoke-interface {p1}, Lb/a/a/h;->getPadAlpha()I

    move-result v0

    add-int/lit8 v0, v0, -0xa

    goto :goto_3

    :pswitch_8
    iget-object p1, p0, Lcom/joyemu/fba/n;->a:Lcom/joyemu/fba/FbaActivity$a;

    iget-object p1, p1, Lcom/joyemu/fba/FbaActivity$a;->m:Lcom/joyemu/fba/FbaActivity;

    iget-object p1, p1, Lcom/joyemu/fba/FbaActivity;->c:Lb/a/a/h;

    invoke-interface {p1}, Lb/a/a/h;->getPadAlpha()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    :goto_3
    invoke-interface {p1, v0}, Lb/a/a/h;->setAlpha(I)V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f090038
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f090045
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7f09004c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
