.class Lcom/joyemu/fbaapp/B;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/joyemu/fbaapp/GameDetail;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/joyemu/fbaapp/GameDetail;


# direct methods
.method constructor <init>(Lcom/joyemu/fbaapp/GameDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/joyemu/fbaapp/B;->a:Lcom/joyemu/fbaapp/GameDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p4, p0, Lcom/joyemu/fbaapp/B;->a:Lcom/joyemu/fbaapp/GameDetail;

    iget-boolean p5, p4, Lcom/joyemu/fbaapp/GameDetail;->B:Z

    if-nez p5, :cond_0

    return-void

    :cond_0
    sget-object p5, Lcom/joyemu/fbaapp/GameDetail;->a:[Z

    aget-boolean v0, p5, p3

    xor-int/lit8 v0, v0, 0x1

    aput-boolean v0, p5, p3

    aget-boolean p5, p5, p3

    if-eqz p5, :cond_1

    iget-object p4, p4, Lcom/joyemu/fbaapp/GameDetail;->K:Ljava/util/Set;

    int-to-long v0, p3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p4, p4, Lcom/joyemu/fbaapp/GameDetail;->K:Ljava/util/Set;

    int-to-long v0, p3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/joyemu/fbaapp/qa;

    const p1, 0x7f0900f1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sget-object p2, Lcom/joyemu/fbaapp/GameDetail;->a:[Z

    aget-boolean p2, p2, p3

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/joyemu/fbaapp/B;->a:Lcom/joyemu/fbaapp/GameDetail;

    iget-object p2, p2, Lcom/joyemu/fbaapp/GameDetail;->A:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2, p3, p3, p3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, p3, p3, p3, p3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_1
    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method
