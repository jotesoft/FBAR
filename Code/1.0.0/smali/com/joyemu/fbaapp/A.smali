.class Lcom/joyemu/fbaapp/A;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/joyemu/fbaapp/pa$a;


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

    iput-object p1, p0, Lcom/joyemu/fbaapp/A;->a:Lcom/joyemu/fbaapp/GameDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 4

    iget-object p1, p0, Lcom/joyemu/fbaapp/A;->a:Lcom/joyemu/fbaapp/GameDetail;

    iget-boolean v0, p1, Lcom/joyemu/fbaapp/GameDetail;->B:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput p2, p1, Lcom/joyemu/fbaapp/GameDetail;->E:I

    new-instance p1, Lcom/joyemu/fbaapp/z;

    invoke-direct {p1, p0}, Lcom/joyemu/fbaapp/z;-><init>(Lcom/joyemu/fbaapp/A;)V

    iget-object p2, p0, Lcom/joyemu/fbaapp/A;->a:Lcom/joyemu/fbaapp/GameDetail;

    invoke-static {p2}, Lcom/joyemu/fbaapp/GameDetai