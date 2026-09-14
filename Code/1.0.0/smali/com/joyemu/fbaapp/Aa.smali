.class Lcom/joyemu/fbaapp/Aa;
.super Lcom/joyemu/treeview/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/joyemu/treeview/b<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private o:Z

.field private final p:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/Set;Lcom/joyemu/treeview/j;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/joyemu/treeview/j<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p3, p4}, Lcom/joyemu/treeview/b;-><init>(Landroid/app/Activity;Lcom/joyemu/treeview/j;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/joyemu/fbaapp/Aa;->o:Z

    new-instance p1, Lcom/joyemu/fbaapp/za;

    invoke-direct {p1, p0}, Lcom/joyemu/fbaapp/za;-><init>(Lcom/joyemu/fbaapp/Aa;)V

    iput-object p1, p0, Lcom/joyemu/fbaapp/Aa;->p:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iput-object p2, p0, Lcom/joyemu/fbaapp/Aa;->n:Ljava/util/Set;

    return-void
.end method

.method private a(J)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/joyemu/treeview/b;->b()Lcom/joyemu/treeview/j;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/joyemu/treeview/j;->a(Ljava/lang/Object;)[Ljava/lang/Integer;

    iget-boolean v0, p0, Lcom/joyemu/fbaapp/Aa;->o:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/joyemu/fbaapp/GameDetail;->e:[Lcom/joyemu/fbaapp/GameDetail$b;

    long-to-int p2, p1

    aget-object p1, v0, p2

    iget-object p1, p1, Lcom/joyemu/fbaapp/GameDetail$b;->f:Ljava/lang/String;

    return-object p1

    :cond_0
    sget-object v0, Lcom/joyemu/fbaapp/GameDetail;->e:[Lcom/joye