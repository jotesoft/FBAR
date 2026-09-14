.class Lcom/joyemu/fbaapp/Ba;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/joyemu/fbaapp/Fa;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/joyemu/fbaapp/Fa;


# direct methods
.method constructor <init>(Lcom/joyemu/fbaapp/Fa;)V
    .locals 0

    iput-object p1, p0, Lcom/joyemu/fbaapp/Ba;->a:Lcom/joyemu/fbaapp/Fa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/joyemu/fbaapp/Ba;->a:Lcom/joyemu/fbaapp/Fa;

    iget-object v0, p1, Lcom/joyemu/fbaapp/Fa;->c:Lcom/joyemu/fba/q;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/joyemu/fbaapp/Fa;->e:[Z

    aget-boolean v0, v0, p2

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/joyemu/fbaapp/Fa;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    iget-object p2, p0, Lcom/joyemu/fbaapp/Ba;->a:Lcom/joyemu/fbaapp/Fa;

    iget-object p2, p2, Lcom/joyemu/fbaapp/Fa;->c:Lcom/joyemu/fba/q;

    const-string v0, "StatePath"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p1}, Lcom/joyemu/fbaapp/fa;->c(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " not exists!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/joyemu/fbaapp/Ba;->a:Lcom/joyemu/fbaapp/Fa;

    iget-object p1, p1, Lcom/joyemu/fbaapp/Fa;->c:Lcom/joyemu/fba/q;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/joyemu/fba/q;->a(Z)V

    return-void
.end method
