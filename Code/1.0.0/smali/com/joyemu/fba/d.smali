.class Lcom/joyemu/fba/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/joyemu/fba/FbaActivity;->j()Landroid/app/Dialog;
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

    iput-object p1, p0, Lcom/joyemu/fba/d;->a:Lcom/joyemu/fba/FbaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    check-cast p1, Landroid/app/Dialog;

    const p2, 0x7f0900ef

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f090135

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/joyemu/fba/d;->a:Lcom/joyemu/fba/FbaActivity;

    const-string v1, "lastNetAddr"

    invoke-static {v0, v1, p2}, Lcom/joyemu/fbaapp/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/joyemu/fba/d;->a:Lcom/joyemu/fba/FbaActivity;

    invoke-static {v0, p2, p1}, Lcom/joyemu/fba/FbaActivity;->a(Lcom/joyemu/fba/FbaActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
