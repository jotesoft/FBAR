.class Lcom/joyemu/fba/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/joyemu/fba/FbaActivity;->f()V
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

    iput-object p1, p0, Lcom/joyemu/fba/m;->a:Lcom/joyemu/fba/FbaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/joyemu/fba/m;->a:Lcom/joyemu/fba/FbaActivity;

    iget-object v0, v0, Lcom/joyemu/fba/FbaActivity;->c:Lb/a/a/h;

    invoke-interface {v0}, Lb/a/a/h;->a()V

    return-void
.end method
