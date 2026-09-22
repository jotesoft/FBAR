.class Lcom/joyemu/fbaapp/C;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


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

    iput-object p1, p0, Lcom/joyemu/fbaapp/C;->a:Lcom/joyemu/fbaapp/GameDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    iget-object p1, p0, Lcom/joyemu/fbaapp/C;->a:Lcom/joyemu/fbaapp/GameDetail;

    iget-boolean v0, p1, Lcom/joyemu/fbaapp/GameDetail;->B:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/joyemu/fbaapp/GameDetail;->a(Lcom/joyemu/fbaapp/GameDetail;II)V

    iget-object p1, p0, Lcom/joyemu/fbaapp/C;->a:Lcom/joyemu/fbaapp/GameDetail;

    add-int/2addr p2, p3

    invoke-static {p1, p2, p4}, Lcom/joyemu/fbaapp/GameDetail;->a(Lcom/joyemu/fbaapp/GameDetail;II)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
