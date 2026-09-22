.class Lcom/joyemu/fbaapp/D;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


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

    iput-object p1, p0, Lcom/joyemu/fbaapp/D;->a:Lcom/joyemu/fbaapp/GameDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4

    const/4 p1, -0x1

    const/16 v0, 0x8

    const/4 v1, 0x0

    const v2, 0x7f09013c

    if-ne p2, v2, :cond_0

    iget-object p2, p0, Lcom/joyemu/fbaapp/D;->a:Lcom/joyemu/fbaapp/GameDetail;

    iput-boolean v1, p2, Lcom/joyemu/fbaapp/GameDetail;->B:Z

    iput p1, p2, Lcom/joyemu/fbaapp/GameDetail;->w:I

    iget-object p1, p2, Lcom/joyemu/fbaapp/GameDetail;->u:Landroid/widget/GridView;

    iget-object p2, p2, Lcom/joyemu/fbaapp/GameDetail;->x:Lcom/joyemu/fbaapp/pa;

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/joyemu/fbaapp/D;->a:Lcom/joyemu/fbaapp/GameDetail;

    iget-object p1, p1, Lcom/joyemu/fbaapp/GameDetail;->x:Lcom/joyemu/fbaapp/pa;

    :goto_0
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/joyemu/fbaapp/D;->a:Lcom/joyemu/fbaapp/GameDetail;

    iget-object p1, p1, Lcom/joyemu/fbaapp/GameDetail;->v:Lcom/joyemu/treeview/TreeViewList;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object p1, p0, Lcom/joyemu/fbaapp/D;->a:Lcom/joyemu/fbaapp/GameDetail;

    iget-object p1, p1, Lcom/joyemu/fbaapp/GameDetail;->u:Landroid/widget/GridView;

    invoke-virtual {p1, v1}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object p1, p0, Lcom/joyemu/fbaapp/D;->a:Lcom/joyemu/fbaapp/GameDetail;

    iget-object p1, p1, Lcom/joyemu/fbaapp/GameDetail;->u:Landroid/widget/GridView;

    invoke-virtual {p1}, Landroid/widget/GridView;->invalidate()V

    iget-object p1, p0, Lcom/joyemu/fbaapp/D;->a:Lcom/joyemu/fbaapp/GameDetail;

    iget-object p1, p1, Lcom/joyemu/fbaapp/GameDetail;->h:Landroid/widget/Gallery;

    invoke-virtual {p1, v1}, Landroid/widget/Gallery;->setVisibility(I)V

    iget-object p1, p0, Lcom/joyemu/fbaapp/D;->a:Lcom/joyemu/fbaapp/GameDetail;

    iget-object p1, p1, Lcom/joyemu/fbaapp/GameDetail;->h:Landroid/widget/Gallery;

    invoke-virtual {p1}, Landroid/widget/Gallery;->invalidate()V

    iget-object p1, p0, Lcom/joyemu/fbaapp/D;->a:Lcom/joyemu/fbaapp/GameDetail;

    iget-object p1, p1, Lcom/joyemu/fbaapp/GameDetail;->o:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/joyemu/fbaapp/D;->a:Lcom/joyemu/fbaapp/GameDetail;

    iget-object p1, p1, Lcom/joyemu/fbaapp/GameDetail;->o:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    goto/16 :goto_3

    :cond_0
    const v2, 0x7f09013b

    const/4 v3, 0x1

    if-ne p2, v2, :cond_4

    iget-object p2, p0, Lcom/joyemu/fbaapp/D;->a:Lcom/joyemu/fbaapp/GameDetail;

    iput-boolean v3, p2, Lcom/joyemu/fbaapp/GameDetail;->B:Z

    iget v2, p2, Lcom/joyemu/fbaapp/GameDetail;->w:I

    if-ne v2, p1, :cond_1

    iput v3, p2, Lcom/joyemu/fbaapp/GameDetail;->w:I

    goto :goto_1

    :cond_1
    if-nez v2, :cond_2

    const/4 p1, 0x2

    iput p1, p2, Lcom/joyemu/fbaapp/GameDetail;->w:I

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/joyemu/fbaapp/D;->a:Lcom/joyemu/fbaapp/GameDetail;

    iget-object p1, p1, Lcom/joyemu/fbaapp/GameDetail;->v:Lcom/joyemu/treeview/TreeViewList;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object p1, p0, Lcom/joyemu/fbaapp/D;->a:Lcom/joyemu/fbaapp/GameDetail;

    const-string p2, "PREF_IPS_DETAIL2"

    invoke-static {p1, p2, v1}, Lcom/joyemu/fbaapp/f;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/joyemu/fbaapp/D;->a:Lcom/joyemu/fbaapp/GameDetail;

    invoke-static {p1}, Lcom/joyemu/fbaapp/GameDetail;->c(Lcom/joyemu/fbaapp/GameDetail;)Lcom/joyemu/fbaapp/Aa;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/joyemu/fbaapp/Aa;->b(Z)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/joyemu/fbaapp/D;->a:Lcom/joyemu/fbaapp/GameDetail;

    invoke-static {p1}, Lcom/joyemu/fbaapp/GameDetail;->c(Lcom/joyemu/fbaapp/GameDetail;)Lcom/joyemu/fbaapp/Aa;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/joyemu/fbaapp/Aa;->b(Z)V

    :goto_2
    iget-object p1, p0, Lcom/joyemu/fbaapp/D;->a:Lcom/joyemu/fbaapp/GameDetail;

    invoke-static {p1}, Lcom/joyemu/fbaapp/GameDetail;->c(Lcom/joyemu/fbaapp/GameDetail;)Lcom/joyemu/fbaapp/Aa;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/joyemu/fbaapp/D;->a:Lcom/joyemu/fbaapp/GameDetail;

    iget-object p1, p1, Lcom/joyemu/fbaapp/GameDetail;->v:Lcom/joyemu/treeview/TreeViewList;

    invoke-virtual {p1}, Landroid/widget/ListView;->invalidate()V

    iget-object p1, p0, Lcom/joyemu/fbaapp/D;->a:Lcom/joyemu/fbaapp/GameDetail;

    iget-object p1, p1, Lcom/joyemu/fbaapp/GameDetail;->u:Landroid/widget/GridView;

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object p1, p0, Lcom/joyemu/fbaapp/D;->a:Lcom/joyemu/fbaapp/GameDetail;

    iget-object p1, p1, Lcom/joyemu/fbaapp/GameDetail;->h:Landroid/widget/Gallery;

    invoke-virtual {p1, v0}, Landroid/widget/Gallery;->setVisibility(I)V

    iget-object p1, p0, Lcom/joyemu/fbaapp/D;->a:Lcom/joyemu/fbaapp/GameDetail;

    iget-object p1, p1, Lcom/joyemu/fbaapp/GameDetail;->h:Landroid/widget/Gallery;

    invoke-virtual {p1}, Landroid/widget/Gallery;->invalidate()V

    iget-object p1, p0, Lcom/joyemu/fbaapp/D;->a:Lcom/joyemu/fbaapp/GameDetail;

    iget-object p1, p1, Lcom/joyemu/fbaapp/GameDetail;->o:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/joyemu/fbaapp/D;->a:Lcom/joyemu/fbaapp/GameDetail;

    iget-object p1, p1, Lcom/joyemu/fbaapp/GameDetail;->o:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    goto :goto_3

    :cond_4
    const p1, 0x7f09013a

    if-ne p2, p1, :cond_5

    iget-object p1, p0, Lcom/joyemu/fbaapp/D;->a:Lcom/joyemu/fbaapp/GameDetail;

    iput-boolean v3, p1, Lcom/joyemu/fbaapp/GameDetail;->B:Z

    iput v1, p1, Lcom/joyemu/fbaapp/GameDetail;->w:I

    iget-object p2, p1, Lcom/joyemu/fbaapp/GameDetail;->u:Landroid/widget/GridView;

    iget-object p1, p1, Lcom/joyemu/fbaapp/GameDetail;->y:Lcom/joyemu/fbaapp/pa;

    invoke-virtual {p2, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/joyemu/fbaapp/D;->a:Lcom/joyemu/fbaapp/GameDetail;

    iget-object p1, p1, Lcom/joyemu/fbaapp/GameDetail;->y:Lcom/joyemu/fbaapp/pa;

    goto/16 :goto_0

    :cond_5
    :goto_3
    return-void
.end method
