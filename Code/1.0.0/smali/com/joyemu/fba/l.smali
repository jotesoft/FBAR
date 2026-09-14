.class Lcom/joyemu/fba/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/joyemu/fba/FbaActivity;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/joyemu/fba/FbaActivity;


# direct methods
.method constructor <init>(Lcom/joyemu/fba/FbaActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/joyemu/fba/l;->b:Lcom/joyemu/fba/FbaActivity;

    iput-object p2, p0, Lcom/joyemu/fba/l;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/joyemu/fba/l;->b:Lcom/joyemu/fba/FbaActivity;

    iget-object p2, p1, Lcom/joyemu/fba/FbaActivity;->w:[Ljava/lang/String;

    aget-object p2, p2, p3

    const-string p2, "tmpcheat.ini"

    const/4 p4, 0x1

    const/4 p5, 0x0

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    iget-object p1, p1, Lcom/joyemu/fba/FbaActivity;->l:Lcom/joyemu/fba/FbaActivity$a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object p1, p0, Lcom/joyemu/fba/l;->b:Lcom/joyemu/fba/FbaActivity;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/joyemu/fba/FbaActivity;->l:Lcom/joyemu/fba/FbaActivity$a;

    :cond_0
    iget-object p1, p0, Lcom/joyemu/fba/l;->b:Lcom/joyemu/fba/FbaActivity;

    iget-object p1, p1, Lcom/joyemu/fba/FbaActivity;->e:Lcom/joyemu/fba/q;

    invoke-interface {p1}, Lb/a/a/g;->onClose()V

    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/joyemu/fbaapp/f;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object p2, p0, Lcom/joyemu/fba/l;->b:Lcom/joyemu/fba/FbaActivity;

    iget p2, p2, Lcom/joyemu/fba/FbaActivity;->i:I

    const-string v0, "game"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/joyemu/fba/l;->b:Lcom/joyemu/fba/FbaActivity;

    invoke-virtual {p2, p4, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/joyemu/fba/l;->b:Lcom/joyemu/fba/FbaActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_5

    :pswitch_1
    iget-object p1, p1, Lcom/joyemu/fba/FbaActivity;->e:Lcom/joyemu/fba/q;

    const/16 p2, 0x1000

    invoke-interface {p1, p2}, Lcom/joyemu/fba/q;->a(I)V

    iget-object p1, p0, Lcom/joyemu/fba/l;->b:Lcom/joyemu/fba/FbaActivity;

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {p1}, Lcom/joyemu/fba/FbaActivity;->d()V

    goto/16 :goto_5

    :pswitch_3
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object p2, p0, Lcom/joyemu/fba/l;->b:Lcom/joyemu/fba/FbaActivity;

    const-class v0, Lcom/joyemu/fbaapp/OptionAct;

    :goto_0
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/joyemu/fba/l;->b:Lcom/joyemu/fba/FbaActivity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_5

    :pswitch_4
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/joyemu/fbaapp/f;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/joyemu/fba/l;->b:Lcom/joyemu/fba/FbaActivity;

    invoke-static {v1}, Lcom/joyemu/fba/FbaActivity;->a(Lcom/joyemu/fba/FbaActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/joyemu/fbaapp/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".ini"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/joyemu/fbaapp/f;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/joyemu/fba/l;->b:Lcom/joyemu/fba/FbaActivity;

    const p2, 0x7f0f010e

    goto/16 :goto_4

    :cond_3
    :goto_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object p2, p0, Lcom/joyemu/fba/l;->b:Lcom/joyemu/fba/FbaActivity;

    const-class v0, Lcom/joyemu/fbaapp/GameCheat;

    goto :goto_0

    :pswitch_5
    iget-object p2, p1, Lcom/joyemu/fba/FbaActivity;->l:Lcom/joyemu/fba/FbaActivity$a;

    if-nez p2, :cond_4

    new-instance p2, Lcom/joyemu/fba/FbaActivity$a;

    invoke-direct {p2, p1, p1}, Lcom/joyemu/fba/FbaActivity$a;-><init>(Lcom/joyemu/fba/FbaActivity;Landroid/app/Activity;)V

    iput-object p2, p1, Lcom/joyemu/fba/FbaActivity;->l:Lcom/joyemu/fba/FbaActivity$a;

    :cond_4
    iget-object p1, p0, Lcom/joyemu/fba/l;->b:Lcom/joyemu/fba/FbaActivity;

    iget-object p2, p1, Lcom/joyemu/fba/FbaActivity;->l:Lcom/joyemu/fba/FbaActivity$a;

    const v0, 0x7f09008d

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x31

    invoke-virtual {p2, p1, v0, p5, p5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object p1, p0, Lcom/joyemu/fba/l;->b:Lcom/joyemu/fba/FbaActivity;

    invoke-static {p1, p5}, Lcom/joyemu/fba/FbaActivity;->c(Lcom/joyemu/fba/FbaActivity;I)I

    invoke-static {p1, p5}, Lcom/joyemu/fba/FbaActivity;->b(Lcom/joyemu/fba/FbaActivity;I)I

    iget-object p1, p0, Lcom/joyemu/fba/l;->b:Lcom/joyemu/fba/FbaActivity;

    iget-object p1, p1, Lcom/joyemu/fba/FbaActivity;->c:Lb/a/a/h;

    invoke-interface {p1, p4}, Lb/a/a/h;->setEditMode(Z)V

    iget-object p1, p0, Lcom/joyemu/fba/l;->b:Lcom/joyemu/fba/FbaActivity;

    iget-object p1, p1, Lcom/joyemu/fba/FbaActivity;->e:Lcom/joyemu/fba/q;

    invoke-interface {p1, p4}, Lcom/joyemu/fba/q;->a(Z)V

    goto :goto_5

    :pswitch_6
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/joyemu/fbaapp/GameSettingCombiKey;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_3

    :pswitch_7
    const/16 p2, 0x2000

    :goto_2
    invoke-static {p1, p2}, Lcom/joyemu/fba/FbaActivity;->a(Lcom/joyemu/fba/FbaActivity;I)I

    goto :goto_5

    :pswitch_8
    invoke-virtual {p1}, Lcom/joyemu/fba/FbaActivity;->b()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/joyemu/fba/l;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WEBVIEW_TITLE"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "WEBVIEW_URL"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/joyemu/fba/l;->b:Lcom/joyemu/fba/FbaActivity;

    const-class v0, Lcom/joyemu/fbaapp/BrowserAct;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_3
    iget-object p1, p0, Lcom/joyemu/fba/l;->b:Lcom/joyemu/fba/FbaActivity;

    invoke-virtual {p1, p2, p5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_5

    :pswitch_9
    iget-object p1, p1, Lcom/joyemu/fba/FbaActivity;->e:Lcom/joyemu/fba/q;

    invoke-interface {p1}, Lcom/joyemu/fba/q;->b()V

    iget-object p1, p0, Lcom/joyemu/fba/l;->b:Lcom/joyemu/fba/FbaActivity;

    const p2, 0x7f0f0129

    :goto_4
    invoke-static {p1, p2, p5}, Lcom/joyemu/fba/ToastCompat;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_5

    :pswitch_a
    iget-object p1, p1, Lcom/joyemu/fba/FbaActivity;->e:Lcom/joyemu/fba/q;

    invoke-interface {p1}, Lb/a/a/g;->e()V

    goto :goto_5

    :pswitch_b
    iget-object p1, p1, Lcom/joyemu/fba/FbaActivity;->e:Lcom/joyemu/fba/q;

    invoke-interface {p1}, Lb/a/a/g;->d()V

    :goto_5
    iget-object p1, p0, Lcom/joyemu/fba/l;->b:Lcom/joyemu/fba/FbaActivity;

    iget-object p1, p1, Lcom/joyemu/fba/FbaActivity;->u:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    if-eqz p3, :cond_6

    if-eq p3, p4, :cond_6

    const/4 p1, 0x6

    if-ne p3, p1, :cond_5

    goto :goto_6

    :cond_5
    iget-object p1, p0, Lcom/joyemu/fba/l;->b:Lcom/joyemu/fba/FbaActivity;

    iget-object p1, p1, Lcom/joyemu/fba/FbaActivity;->e:Lcom/joyemu/fba/q;

    invoke-interface {p1, p5}, Lcom/joyemu/fba/q;->a(Z)V

    goto :goto_7

    :cond_6
    :goto_6
    iget-object p1, p0, Lcom/joyemu/fba/l;->b:Lcom/joyemu/fba/FbaActivity;

    iget-object p1, p1, Lcom/joyemu/fba/FbaActivity;->e:Lcom/joyemu/fba/q;

    invoke-interface {p1, p4}, Lcom/joyemu/fba/q;->a(Z)V

    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
