.class Lcom/joyemu/fba/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/joyemu/fba/FbaActivity;->d()V
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

    iput-object p1, p0, Lcom/joyemu/fba/g;->a:Lcom/joyemu/fba/FbaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/joyemu/fba/g;->a:Lcom/joyemu/fba/FbaActivity;

    invoke-static {p1}, Lcom/joyemu/fba/FbaActivity;->l(Lcom/joyemu/fba/FbaActivity;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    const/4 v0, 0x3

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/joyemu/fba/g;->a:Lcom/joyemu/fba/FbaActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    if-ne p2, p1, :cond_2

    iget-object p1, p0, Lcom/joyemu/fba/g;->a:Lcom/joyemu/fba/FbaActivity;

    invoke-static {p1, v0}, Lcom/joyemu/fba/FbaActivity;->d(Lcom/joyemu/fba/FbaActivity;I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/joyemu/fba/g;->a:Lcom/joyemu/fba/FbaActivity;

    invoke-static {p1}, Lcom/joyemu/fba/FbaActivity;->m(Lcom/joyemu/fba/FbaActivity;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    if-ne p2, v0, :cond_3

    iget-object p2, p0, Lcom/joyemu/fba/g;->a:Lcom/joyemu/fba/FbaActivity;

    invoke-static {p2, p1}, Lcom/joyemu/fba/FbaActivity;->d(Lcom/joyemu/fba/FbaActivity;I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/joyemu/fba/g;->a:Lcom/joyemu/fba/FbaActivity;

    invoke-static {p1}, Lcom/joyemu/fba/FbaActivity;->n(Lcom/joyemu/fba/FbaActivity;)V

    goto :goto_0

    :cond_3
    if-ne p2, p1, :cond_4

    iget-object p1, p0, Lcom/joyemu/fba/g;->a:Lcom/joyemu/fba/FbaActivity;

    invoke-static {p1}, Lcom/joyemu/fba/FbaActivity;->o(Lcom/joyemu/fba/FbaActivity;)V

    :cond_4
    :goto_0
    return-void
.end method
