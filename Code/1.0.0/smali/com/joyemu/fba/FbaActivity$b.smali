.class Lcom/joyemu/fba/FbaActivity$b;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/joyemu/fba/FbaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/joyemu/fba/FbaActivity;


# direct methods
.method private constructor <init>(Lcom/joyemu/fba/FbaActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/joyemu/fba/FbaActivity$b;->a:Lcom/joyemu/fba/FbaActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/joyemu/fba/FbaActivity;Lcom/joyemu/fba/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/joyemu/fba/FbaActivity$b;-><init>(Lcom/joyemu/fba/FbaActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GameMenuAct.action"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    const-string v0, "game cmd"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    :pswitch_1
    const/16 p2, 0xa

    new-array p2, p2, [I

    fill-array-data p2, :array_0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    sget v2, Lcom/joyemu/fbaapp/w;->h:I

    const/4 v3, 0x1

    shl-int v3, v3, v1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/joyemu/fba/FbaActivity$b;->a:Lcom/joyemu/fba/FbaActivity;

    iget-object v2, v2, Lcom/joyemu/fba/FbaActivity;->c:Lb/a/a/h;

    aget v3, p2, v1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lb/a/a/h;->a(IZ)V

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/joyemu/fba/FbaActivity$b;->a:Lcom/joyemu/fba/FbaActivity;

    iget-object v2, v2, Lcom/joyemu/fba/FbaActivity;->c:Lb/a/a/h;

    aget v3, p2, v1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lb/a/a/h;->a(IZ)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x6

    new-array p2, p2, [I

    fill-array-data p2, :array_1

    const/4 v1, 0x0

    :goto_2
    array-length v2, p2

    if-ge v1, v2, :cond_3

    sget v2, Lcom/joyemu/fbaapp/w;->i:I

    shl-int v3, v0, v1

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/joyemu/fba/FbaActivity$b;->a:Lcom/joyemu/fba/FbaActivity;

    iget-object v2, v2, Lcom/joyemu/fba/FbaActivity;->c:Lb/a/a/h;

    aget v3, p2, v1

    invoke-interface {v2, v3, v0}, Lb/a/a/h;->a(IZ)V

    goto :goto_3

    :cond_2
    iget-object v2, p0, Lcom/joyemu/fba/FbaActivity$b;->a:Lcom/joyemu/fba/FbaActivity;

    iget-object v2, v2, Lcom/joyemu/fba/FbaActivity;->c:Lb/a/a/h;

    aget v3, p2, v1

    invoke-interface {v2, v3, p1}, Lb/a/a/h;->a(IZ)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/joyemu/fba/FbaActivity$b;->a:Lcom/joyemu/fba/FbaActivity;

    iget-object p1, p1, Lcom/joyemu/fba/FbaActivity;->c:Lb/a/a/h;

    sget-boolean p2, Lcom/joyemu/fbaapp/w;->j:Z

    invoke-interface {p1, p2}, Lb/a/a/h;->a(Z)V

    iget-object p1, p0, Lcom/joyemu/fba/FbaActivity$b;->a:Lcom/joyemu/fba/FbaActivity;

    iget-object p1, p1, Lcom/joyemu/fba/FbaActivity;->c:Lb/a/a/h;

    invoke-interface {p1}, Lb/a/a/h;->a()V

    iget-object v0, p0, Lcom/joyemu/fba/FbaActivity$b;->a:Lcom/joyemu/fba/FbaActivity;

    invoke-virtual {v0}, Lcom/joyemu/fba/FbaActivity;->refreshCombiPresetIcons()V

    goto :goto_4

    :pswitch_2
    iget-object p1, p0, Lcom/joyemu/fba/FbaActivity$b;->a:Lcom/joyemu/fba/FbaActivity;

    iget-object p1, p1, Lcom/joyemu/fba/FbaActivity;->e:Lcom/joyemu/fba/q;

    invoke-interface {p1}, Lcom/joyemu/fba/q;->c()V

    iget-object p1, p0, Lcom/joyemu/fba/FbaActivity$b;->a:Lcom/joyemu/fba/FbaActivity;

    iget-object p1, p1, Lcom/joyemu/fba/FbaActivity;->c:Lb/a/a/h;

    sget-boolean p2, Lcom/joyemu/fbaapp/f;->s:Z

    invoke-interface {p1, p2}, Lb/a/a/h;->setActive(Z)V

    goto :goto_4

    :pswitch_3
    iget-object p1, p0, Lcom/joyemu/fba/FbaActivity$b;->a:Lcom/joyemu/fba/FbaActivity;

    iget-object p1, p1, Lcom/joyemu/fba/FbaActivity;->e:Lcom/joyemu/fba/q;

    invoke-interface {p1}, Lcom/joyemu/fba/q;->b()V

    goto :goto_4

    :pswitch_4
    iget-object p1, p0, Lcom/joyemu/fba/FbaActivity$b;->a:Lcom/joyemu/fba/FbaActivity;

    iget-object p1, p1, Lcom/joyemu/fba/FbaActivity;->e:Lcom/joyemu/fba/q;

    invoke-interface {p1}, Lb/a/a/g;->onClose()V

    new-instance p1, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/joyemu/fbaapp/f;->n:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "tmpcheat.ini"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_4
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object p2, p0, Lcom/joyemu/fba/FbaActivity$b;->a:Lcom/joyemu/fba/FbaActivity;

    iget p2, p2, Lcom/joyemu/fba/FbaActivity;->i:I

    const-string v1, "game"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/joyemu/fba/FbaActivity$b;->a:Lcom/joyemu/fba/FbaActivity;

    invoke-virtual {p2, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/joyemu/fba/FbaActivity$b;->a:Lcom/joyemu/fba/FbaActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_4

    :pswitch_5
    iget-object p1, p0, Lcom/joyemu/fba/FbaActivity$b;->a:Lcom/joyemu/fba/FbaActivity;

    iget-object p1, p1, Lcom/joyemu/fba/FbaActivity;->e:Lcom/joyemu/fba/q;

    invoke-interface {p1}, Lb/a/a/g;->f()V

    goto :goto_4

    :pswitch_6
    iget-object p1, p0, Lcom/joyemu/fba/FbaActivity$b;->a:Lcom/joyemu/fba/FbaActivity;

    iget-object p1, p1, Lcom/joyemu/fba/FbaActivity;->e:Lcom/joyemu/fba/q;

    invoke-interface {p1}, Lb/a/a/g;->e()V

    goto :goto_4

    :pswitch_7
    iget-object p1, p0, Lcom/joyemu/fba/FbaActivity$b;->a:Lcom/joyemu/fba/FbaActivity;

    iget-object p1, p1, Lcom/joyemu/fba/FbaActivity;->e:Lcom/joyemu/fba/q;

    invoke-interface {p1}, Lb/a/a/g;->d()V

    :cond_5
    :goto_4
    :pswitch_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0xc
        0xd
        0xe
        0xf
        0x10
        0x17
        0x18
        0x19
        0x1a
        0x1b
    .end array-data

    :array_1
    .array-data 4
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data
.end method
