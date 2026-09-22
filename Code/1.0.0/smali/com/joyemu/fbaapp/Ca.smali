.class Lcom/joyemu/fbaapp/Ca;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    iput-object p1, p0, Lcom/joyemu/fbaapp/Ca;->a:Lcom/joyemu/fbaapp/Fa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/joyemu/fbaapp/Ca;->a:Lcom/joyemu/fbaapp/Fa;

    iget-object p1, p1, Lcom/joyemu/fbaapp/Fa;->c:Lcom/joyemu/fba/q;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/joyemu/fba/q;->a(Z)V

    return-void
.end method
