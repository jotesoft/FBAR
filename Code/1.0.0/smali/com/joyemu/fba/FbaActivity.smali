.class public Lcom/joyemu/fba/FbaActivity;
.super Landroid/app/Activity;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/joyemu/fba/FbaActivity$c;,
        Lcom/joyemu/fba/FbaActivity$a;,
        Lcom/joyemu/fba/FbaActivity$b;
    }
.end annotation


# static fields
.field public static sInstance:Lcom/joyemu/fba/FbaActivity;


# instance fields
.field private A:I

.field private B:Z

.field private C:Landroid/os/Handler;

.field private D:J

.field final a:Z

.field b:Landroid/view/View;

.field public c:Lb/a/a/h;

.field private d:I

.field e:Lcom/joyemu/fba/q;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field h:I

.field i:I

.field j:Landroid/app/ProgressDialog;

.field k:Landroid/content/BroadcastReceiver;

.field l:Lcom/joyemu/fba/FbaActivity$a;

.field m:Landroid/media/AudioManager;

.field private mPlayerCheckBoxes:[Landroid/widget/CheckBox;

.field private mPlayerDialogShowing:Z

.field private n:I

.field private o:Z

.field private final p:I

.field private q:I

.field private r:I

.field s:Landroid/view/View$OnTouchListener;

.field private t:Z

.field u:Landroid/app/AlertDialog;

.field v:[I

.field w:[Ljava/lang/String;

.field x:Landroid/widget/GridView;

.field private y:Lcom/joyemu/fba/FbaActivity$c;

.field private z:Lb/a/a/j;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/joyemu/fba/FbaActivity;->a:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/joyemu/fba/FbaActivity;->e:Lcom/joyemu/fba/q;

    const-string v2, ""

    iput-object v2, p0, Lcom/joyemu/fba/FbaActivity;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/joyemu/fba/FbaActivity;->g:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, p0, Lcom/joyemu/fba/FbaActivity;->h:I

    iput v2, p0, Lcom/joyemu/fba/FbaActivity;->i:I

    iput-object v1, p0, Lcom/joyemu/fba/FbaActivity;->j:Landroid/app/ProgressDialog;

    iput-boolean v2, p0, Lcom/joyemu/fba/FbaActivity;->o:Z

    const/16 v1, 0x64

    iput v1, p0, Lcom/joyemu/fba/FbaActivity;->p:I

    new-instance v1, Lcom/joyemu/fba/f;

    invoke-direct {v1, p0}, Lcom/joyemu/fba/f;-><init>(Lcom/joyemu/fba/FbaActivity;)V

    iput-object v1, p0, Lcom/joyemu/fba/FbaActivity;->s:Landroid/view/View$OnTouchListener;

    iput-boolean v0, p0, Lcom/joyemu/fba/FbaActivity;->t:Z

    iput-boolean v2, p0, Lcom/joyemu/fba/FbaActivity;->B:Z

    new-instance v0, Lcom/joyemu/fba/a;

    invoke-direct {v0, p0}, Lcom/joyemu/fba/a;-><init>(Lcom/joyemu/fba/FbaActivity;)V

    iput-object v0, p0, Lcom/joyemu/fba/FbaActivity;->C:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/joyemu/fba/FbaActivity;->D:J

    return-void
.end method

.method private static a(II)I
    .locals 1

    shl-int/lit8 p1, p1, 0x10

    const v0, 0xffff

    and-int/2addr p0, v0

    or-int/2addr p0, p1

    return p0
.end method

.method static synthetic a(Lcom/joyemu/fba/FbaActivity;I)I
    .locals 0

    iput p1, p0, Lcom/joyemu/fba/FbaActivity;->d:I

    return p1
.end method

.method private a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/joyemu/fba/FbaActivity;->y:Lcom/joyemu/fba/FbaActivity$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/joyemu/fba/FbaActivity;->y:Lcom/joyemu/fba/FbaActivity$c;

    :cond_0
    new-instance v0, Lcom/joyemu/fba/FbaActivity$c;

    invoke-direct {v0, p0}, Lcom/joyemu/fba/FbaActivity$c;-><init>(Lcom/joyemu/fba/FbaActivity;)V

    iput-object v0, p0, Lcom/joyemu/fba/FbaActivity;->y:Lcom/joyemu/fba/FbaActivity$c;

    iget-object v0, p0, Lcom/joyemu/fba/FbaActivity;->y:Lcom/joyemu/fba/FbaActivity$c;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/joyemu/fba/FbaActivity;->y:Lcom/joyemu/fba/FbaActivity$c;

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/joyemu/fba/FbaActivity;->y:Lcom/joyemu/fba/FbaActivity$c;

    return-object p1
.end method

.method private a([Ljava/lang/String;[I)Landroid/widget/SimpleAdapter;
    .locals 9

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "itemText"

    aput-object v3, v4, v1

    const/4 v3, 0x1

    const-string v5, "itemImage"

    aput-object v5, v4, v3

    new-array v5, v0, [I

    fill-array-data v5, :array_0

    const/4 v0, 0x0

    :goto_0
    array-length v6, p1

    if-ge v0, v6, :cond_0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    aget-object v7, v4, v1

    aget-object v8, p1, v0

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v7, v4, v3

    aget v8, p2, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/widget/SimpleAdapter;

    const v3, 0x7f0c0047

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-object p1

    nop

    :array_0
    .array-data 4
        0x7f0900f3
        0x7f0900f2
    .end array-data
.end method

.method static synthetic a(Lcom/joyemu/fba/FbaActivity;Lb/a/a/j;)Lb/a/a/j;
    .locals 0

    iput-object p1, p0, Lcom/joyemu/fba/FbaActivity;->z:Lb/a/a/j;

    return-object p1
.end method

.method static synthetic a(Lcom/joyemu/fba/FbaActivity;Lcom/joyemu/fba/FbaActivity$c;)Lcom/joyemu/fba/FbaActivity$c;
    .locals 0

    iput-object p1, p0, Lcom/joyemu/fba/FbaActivity;->y:Lcom/joyemu/fba/FbaActivity$c;

    return-object p1
.end method

.method static synthetic a(Lcom/joyemu/fba/FbaActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/joyemu/fba/FbaActivity;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/joyemu/fba/FbaActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/joyemu/fba/FbaActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ljava/io/File;[B)V
    .locals 0

    invoke-static {p0, p1}, Lcom/joyemu/fba/FbaActivity;->b(Ljava/io/File;[B)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Lb/a/a/j;

    iget-object v1, p0, Lcom/joyemu/fba/FbaActivity;->C:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lb/a/a/j;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, p1}, Lb/a/a/j;->a(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/joyemu/fba/FbaActivity;->z:Lb/a/a/j;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/joyemu/fba/FbaActivity;->B:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const p1, 0x7f0f0108

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const v0, 0x7f0f00ce

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/joyemu/fba/FbaActivity;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :catch_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-static {p1}, Lc/a/a/a/b/a;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    throw p1

    :catch_0
    const p1, 0x7f0f00f8

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/joyemu/fba/ToastCompat;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private a(I)Z
    .locals 2

    invoke-static {}, Lb/a/a/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p1, 0x0

    return p1
.end method

.method private a(IIZ)Z
    .locals 3

    if-gtz p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/joyemu/fba/FbaActivity;->b(IIZ)Z

    move-result p1

    sget-boolean v0, Lcom/joyemu/fbaapp/f;->v:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_2

    invoke-direct {p0, v0, p2, p3}, Lcom/joyemu/fba/FbaActivity;->b(IIZ)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return p1
.end method

.method static synthetic a(Lcom/joyemu/fba/FbaActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/joyemu/fba/FbaActivity;->B:Z

    return p1
.end method

.method private static a(Ljava/io/File;)[B
    .locals 3

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int p0, v1

    new-array p0, p0, [B

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-object p0

    :cond_0
    :try_start_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    throw p0
.end method

.method static synthetic b(Lcom/joyemu/fba/FbaActivity;I)I
    .locals 0

    iput p1, p0, Lcom/joyemu/fba/FbaActivity;->q:I

    return p1
.end method

.method static synthetic b(Lcom/joyemu/fba/FbaActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/joyemu/fba/FbaActivity;->g:Ljava/lang/String;

    return-object p0
.end method

.method private static b(Ljava/io/File;[B)V
    .locals 1

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    throw p0
.end method

.method private b(IIZ)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x10

    if-ge v0, v2, :cond_5

    sget-object v2, Lcom/joyemu/fbaapp/f;->N:[[I

    aget-object v2, v2, p1

    aget v2, v2, v0

    if-ne p2, v2, :cond_4

    sget-boolean v1, Lcom/joyemu/fbaapp/w;->j:Z

    if-eqz v1, :cond_0

    invoke-static {v0, p3, p1}, Lcom/joyemu/fbaapp/w;->a(IZI)V

    :cond_0
    if-eqz p3, :cond_2

    sget v1, Lcom/joyemu/fbaapp/w;->d:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    sget-object v1, Lcom/joyemu/fbaapp/f;->L:[I

    aget v2, v1, p1

    sget-object v3, Lcom/joyemu/fbaapp/f;->P:[I

    aget v3, v3, v0

    or-int/2addr v2, v3

    aput v2, v1, p1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/joyemu/fbaapp/f;->L:[I

    aget v2, v1, p1

    sget-object v3, Lcom/joyemu/fbaapp/f;->O:[I

    aget v3, v3, v0

    or-int/2addr v2, v3

    aput v2, v1, p1

    goto :goto_1

    :cond_2
    sget v1, Lcom/joyemu/fbaapp/w;->d:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    sget-object v1, Lcom/joyemu/fbaapp/f;->L:[I

    aget v2, v1, p1

    sget-object v3, Lcom/joyemu/fbaapp/f;->P:[I

    aget v3, v3, v0

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    aput v2, v1, p1

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/joyemu/fbaapp/f;->L:[I

    aget v2, v1, p1

    sget-object v3, Lcom/joyemu/fbaapp/f;->O:[I

    aget v3, v3, v0

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    aput v2, v1, p1

    :goto_1
    const/4 v1, 0x1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return v1
.end method

.method static synthetic c(Lcom/joyemu/fba/FbaActivity;I)I
    .locals 0

    iput p1, p0, Lcom/joyemu/fba/FbaActivity;->r:I

    return p1
.end method

.method static synthetic c(Lcom/joyemu/fba/FbaActivity;)Lcom/joyemu/fba/FbaActivity$c;
    .locals 0

    iget-object p0, p0, Lcom/joyemu/fba/FbaActivity;->y:Lcom/joyemu/fba/FbaActivity$c;

    return-object p0
.end method

.method static synthetic d(Lcom/joyemu/fba/FbaActivity;)Lb/a/a/j;
    .locals 0

    iget-object p0, p0, Lcom/joyemu/fba/FbaActivity;->z:Lb/a/a/j;

    return-object p0
.end method

.method static synthetic d(Lcom/joyemu/fba/FbaActivity;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/joyemu/fba/FbaActivity;->a(I)Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lcom/joyemu/fba/FbaActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/joyemu/fba/FbaActivity;->p()V

    return-void
.end method

.method static synthetic f(Lcom/joyemu/fba/FbaActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/joyemu/fba/FbaActivity;->g()V

    return-void
.end method

.method static synthetic g(Lcom/joyemu/fba/FbaActivity;)Ljava/io/File;
    .locals 0

    invoke-direct {p0}, Lcom/joyemu/fba/FbaActivity;->l()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private g()V
    .locals 0

    return-void
.end method

.method private getCurrentSkinPath()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/joyemu/fba/FbaActivity;->c:Lb/a/a/h;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/joyemu/newinput/GameOverlay;

    iget-object v1, v0, Lcom/joyemu/newinput/GameOverlay;->h:Lcom/joyemu/newinput/a/b;

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/joyemu/newinput/a/a;->b:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "skin_default"

    return-object v0
.end method

.method public static getInstance()Lcom/joyemu/fba/FbaActivity;
    .locals 1

    sget-object v0, Lcom/joyemu/fba/FbaActivity;->sInstance:Lcom/joyemu/fba/FbaActivity;

    return-object v0
.end method

.method private getPresetImageName(II)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xc0

    if-ne p1, v0, :cond_0

    const-string p0, "button_ab"

    return-object p0

    :cond_0
    const/16 v0, 0x300

    if-ne p1, v0, :cond_1

    const-string p0, "button_cd"

    return-object p0

    :cond_1
    const/16 v0, 0x140

    if-ne p1, v0, :cond_2

    const-string p0, "button_ac"

    return-object p0

    :cond_2
    const/16 v0, 0x280

    if-ne p1, v0, :cond_3

    const-string p0, "button_bd"

    return-object p0

    :cond_3
    const/16 v0, 0x180

    if-ne p1, v0, :cond_4

    const-string p0, "button_bc"

    return-object p0

    :cond_4
    const/16 v0, 0x1c0

    if-ne p1, v0, :cond_5

    const-string p0, "button_abc"

    return-object p0

    :cond_5
    const/16 v0, 0x380

    if-ne p1, v0, :cond_6

    const-string p0, "button_bcd"

    return-object p0

    :cond_6
    const/16 v0, 0x3c0

    if-ne p1, v0, :cond_7

    const-string p0, "button_abcd"

    return-object p0

    :cond_7
    const/16 v0, 0xe00

    if-ne p1, v0, :cond_8

    const-string p0, "button_def"

    return-object p0

    :cond_8
    const/16 v0, 0x240

    if-ne p1, v0, :cond_9

    const-string p0, "button_ad"

    return-object p0

    :cond_9
    const/16 v0, 0x480

    if-ne p1, v0, :cond_a

    const-string p0, "button_be"

    return-object p0

    :cond_a
    const/16 v0, 0x900

    if-ne p1, v0, :cond_b

    const-string p0, "button_cf"

    return-object p0

    :cond_b
    add-int/lit8 p0, p2, 0x1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "BUTTON_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private h()V
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :legacy_permissions

    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v0

    if-nez v0, :all_files_granted

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v1, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :all_files_granted
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/joyemu/fbaapp/GameListAct;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :legacy_permissions
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v1, :cond_0

    if-nez v3, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/joyemu/fbaapp/GameListAct;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    const/4 v0, 0x1

    aput-object v2, v1, v0

    const/16 v0, 0x64

    invoke-static {p0, v1, v0}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method static synthetic h(Lcom/joyemu/fba/FbaActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/joyemu/fba/FbaActivity;->r()V

    return-void
.end method

.method private i()V
    .locals 6

    const/16 v0, 0xc

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/joyemu/fba/FbaActivity;->v:[I

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f004a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0f0047

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0f0045

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0f00eb

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0f00ea

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    aput-object v1, v0, v4

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0f00e9

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x5

    aput-object v1, v0, v5

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0f00ee

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x6

    aput-object v1, v0, v5

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0f00e7

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x7

    aput-object v1, v0, v5

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0f00ef

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x8

    aput-object v1, v0, v5

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0f00ec

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x9

    aput-object v1, v0, v5

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0f0048

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0xa

    aput-object v1, v0, v5

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0f00e8

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0xb

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/joyemu/fba/FbaActivity;->w:[Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0042

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v5, Lcom/joyemu/fba/h;

    invoke-direct {v5, p0}, Lcom/joyemu/fba/h;-><init>(Lcom/joyemu/fba/FbaActivity;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/joyemu/fba/FbaActivity;->u:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/joyemu/fba/FbaActivity;->u:Landroid/app/AlertDialog;

    new-instance v5, Lcom/joyemu/fba/i;

    invoke-direct {v5, p0}, Lcom/joyemu/fba/i;-><init>(Lcom/joyemu/fba/FbaActivity;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v1, p0, Lcom/joyemu/fba/FbaActivity;->u:Landroid/app/AlertDialog;

    new-instance v5, Lcom/joyemu/fba/j;

    invoke-direct {v5, p0}, Lcom/joyemu/fba/j;-><init>(Lcom/joyemu/fba/FbaActivity;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/joyemu/fba/FbaActivity;->u:Landroid/app/AlertDialog;

    new-instance v5, Lcom/joyemu/fba/k;

    invoke-direct {v5, p0}, Lcom/joyemu/fba/k;-><init>(Lcom/joyemu/fba/FbaActivity;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    const v1, 0x7f090097

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/joyemu/fba/FbaActivity;->x:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/joyemu/fba/FbaActivity;->x:Landroid/widget/GridView;

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    new-array v0, v3, [Landroid/widget/SimpleAdapter;

    iget-object v1, p0, Lcom/joyemu/fba/FbaActivity;->w:[Ljava/lang/String;

    iget-object v3, p0, Lcom/joyemu/fba/FbaActivity;->v:[I

    invoke-direct {p0, v1, v3}, Lcom/joyemu/fba/FbaActivity;->a([Ljava/lang/String;[I)Landroid/widget/SimpleAdapter;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/joyemu/fba/FbaActivity;->x:Landroid/widget/GridView;

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/joyemu/fba/FbaActivity;->x:Landroid/widget/GridView;

    new-instance v1, Lcom/joyemu/fba/l;

    invoke-direct {v1, p0, p0}, Lcom/joyemu/fba/l;-><init>(Lcom/joyemu/fba/FbaActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0800ae
        0x7f0800a9
        0x7f0800af
        0x7f0800a3
        0x7f08009f
        0x7f0800a7
        0x7f0800b1
        0x7f08009e
        0x7f0800b0
        0x7f0800ab
        0x7f0800ad
        0x7f0800ac
    .end array-data
.end method

.method static synthetic i(Lcom/joyemu/fba/FbaActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/joyemu/fba/FbaActivity;->k()V

    return-void
.end method

.method static synthetic j(Lcom/joyemu/fba/FbaActivity;)I
    .locals 0

    iget p0, p0, Lcom/joyemu/fba/FbaActivity;->q:I

    return p0
.end method

.method private j()Landroid/app/Dialog;
    .locals 5

    new-instance v0, Lcom/joyemu/fba/d;

    invoke-direct {v0, p0}, Lcom/joyemu/fba/d;-><init>(Lcom/joyemu/fba/FbaActivity;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f010b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f0c007e

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic k(Lcom/joyemu/fba/FbaActivity;)I
    .locals 0

    iget p0, p0, Lcom/joyemu/fba/FbaActivity;->r:I

    return p0
.end method

.method private k()V
    .locals 2

    invoke-static {}, Lb/a/a/m;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private l()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "saved_state"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic l(Lcom/joyemu/fba/FbaActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/joyemu/fba/FbaActivity;->q()V

    return-void
.end method

.method private m()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/joyemu/fbaapp/DeviceListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic m(Lcom/joyemu/fba/FbaActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/joyemu/fba/FbaActivity;->n()V

    return-void
.end method

.method private n()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :bt_server_ready

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string v2, "android.permission.BLUETOOTH_ADVERTISE"

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v1, :request_bt_server_permissions

    if-eqz v2, :bt_server_ready

:request_bt_server_permissions
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.BLUETOOTH_SCAN"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "android.permission.BLUETOOTH_ADVERTISE"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x65

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

:bt_server_ready
    :try_start_0
    new-instance v0, Lb/a/a/j;

    iget-object v1, p0, Lcom/joyemu/fba/FbaActivity;->C:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lb/a/a/j;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0}, Lb/a/a/j;->b()V

    iput-object v0, p0, Lcom/joyemu/fba/FbaActivity;->z:Lb/a/a/j;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/joyemu/fba/FbaActivity;->B:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const v0, 0x7f0f0109

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f0f00c2

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/joyemu/fba/FbaActivity;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Dialog;

    iget-object v0, p0, Lcom/joyemu/fba/FbaActivity;->y:Lcom/joyemu/fba/FbaActivity$c;

    new-instance v1, Lcom/joyemu/fba/b;

    invoke-direct {v1, p0}, Lcom/joyemu/fba/b;-><init>(Lcom/joyemu/fba/FbaActivity;)V

    invoke-virtual {v0, v1}, Lcom/joyemu/fba/FbaActivity$c;->a(Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/joyemu/fba/FbaActivity;->y:Lcom/joyemu/fba/FbaActivity$c;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :catch_0
    return-void
.end method

.method static synthetic n(Lcom/joyemu/fba/FbaActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/joyemu/fba/FbaActivity;->m()V

    return-void
.end method

.method private o()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/joyemu/fba/FbaActivity;->B:Z

    iget-object v0, p0, Lcom/joyemu/fba/FbaActivity;->z:Lb/a/a/j;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/joyemu/fba/FbaActivity;->s()V

    iget-object v0, p0, Lcom/joyemu/fba/FbaActivity;->z:Lb/a/a/j;

    invoke-virtual {v0}, Lb/a/a/j;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/joyemu/fba/FbaActivity;->z:Lb/a/a/j;

    const-string v0, "onDisconnect"

    invoke-static {v0}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic o(Lcom/joyemu/fba/FbaActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/joyemu/fba/FbaActivity;->o()V

    return-void
.end method

.method private p()V
    .locals 3

    invoke-direct {p0}, Lcom/joyemu/fba/FbaActivity;->l()Ljava/io/File;

    move-result-object v0

    :try_start_0
    const-string v1, "onNetPlaySync"

    invoke-static {v1}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/joyemu/fba/FbaActivity;->e:Lcom/joyemu/fba/q;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/joyemu/fba/q;->a(Z)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/joyemu/fba/FbaEmu;->saveState(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/joyemu/fba/FbaActivity;->e:Lcom/joyemu/fba/q;

    const/16 v2, 0x1000

    invoke-interface {v1, v2}, Lcom/joyemu/fba/q;->a(I)V

    iget-object v1, p0, Lcom/joyemu/fba/FbaActivity;->e:Lcom/joyemu/fba/q;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/joyemu/fba/q;->a(Z)V

    iget-object v1, p0, Lcom/joyemu/fba/FbaActivity;->z:Lb/a/a/j;

    invoke-static {v0}, Lcom/joyemu/fba/FbaActivity;->a(Ljava/io/File;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lb/a/a/j;->a([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private q()V
    .locals 7

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    const v0, 0x7f0f0180

    invoke-static {p0, v0, v2}, Lcom/joyemu/fba/ToastCompat;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    :try_start_0
    new-array v3, v3, [B

    int-to-byte v6, v0

    aput-byte v6, v3, v2

    ushr-int/lit8 v6, v0, 0x8

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    ushr-int/lit8 v6, v0, 0x10

    int-to-byte v6, v6

    aput-byte v6, v3, v4

    const/4 v6, 0x3

    ushr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    aput-byte v0, v3, v6

    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/16 v0, 0x14f9

    :try_start_1
    new-instance v3, Lb/a/a/j;

    iget-object v6, p0, Lcom/joyemu/fba/FbaActivity;->C:Landroid/os/Handler;

    invoke-direct {v3, v6}, Lb/a/a/j;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v3, v1, v0}, Lb/a/a/j;->a(Ljava/net/InetAddress;I)I

    move-result v0

    iput-object v3, p0, Lcom/joyemu/fba/FbaActivity;->z:Lb/a/a/j;

    iput-boolean v2, p0, Lcom/joyemu/fba/FbaActivity;->B:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const v3, 0x7f0f010c

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v6, 0x7f0f0181

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {p0, v6, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/joyemu/fba/FbaActivity;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :catch_1
    return-void
.end method

.method private r()V
    .locals 4

    iget-object v0, p0, Lcom/joyemu/fba/FbaActivity;->C:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/joyemu/fba/FbaActivity;->A:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private s()V
    .locals 2

    iget-object v0, p0, Lcom/joyemu/fba/FbaActivity;->C:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0123

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0122

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/joyemu/fba/FbaActivity;->j:Landroid/app/ProgressDialog;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/joyemu/fba/e;

    invoke-direct {v1, p0}, Lcom/joyemu/fba/e;-><init>(Lcom/joyemu/fba/FbaActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method b()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/joyemu/fbaapp/f;->U:Ljava/lang/String;

    invoke-static {v0}, Lcom/joyemu/fbaapp/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/joyemu/fbaapp/f;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".htm"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/joyemu/fbaapp/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "file:///android_asset/search.htm"

    :goto_0
    return-object v0
.end method

.method public c()I
    .locals 11

    iget-wide v0, p0, Lcom/joyemu/fba/FbaActivity;->D:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/joyemu/fba/FbaActivity;->D:J

    iget-wide v0, p0, Lcom/joyemu/fba/FbaActivity;->D:J

    sget v2, Lcom/joyemu/fbaapp/w;->c:I

    int-to-long v2, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v2

    if-ltz v6, :cond_0

    iput-wide v4, p0, Lcom/joyemu/fba/FbaActivity;->D:J

    :cond_0
    iget-object v0, p0, Lcom/joyemu/fba/FbaActivity;->z:Lb/a/a/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-boolean v2, p0, Lcom/joyemu/fba/FbaActivity;->B:Z

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_4

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    :try_start_0
    sget-object v2, Lcom/joyemu/fbaapp/f;->L:[I

    sget v3, Lcom/joyemu/fbaapp/f;->K:I

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Lb/a/a/j;->a(I)I

    move-result v0

    const-string v3, "debug"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "netplay key:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/joyemu/fba/FbaActivity;->z:Lb/a/a/j;

    invoke-virtual {v3}, Lb/a/a/j;->d()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-static {v2, v0}, Lcom/joyemu/fba/FbaActivity;->a(II)I

    move-result v3

    invoke-static {v1, v2}, Lcom/joyemu/fba/FbaEmu;->setKeyState(II)I

    invoke-static {v4, v0}, Lcom/joyemu/fba/FbaEmu;->setKeyState(II)I

    goto :goto_0

    :cond_3
    invoke-static {v0, v2}, Lcom/joyemu/fba/FbaActivity;->a(II)I

    move-result v3

    invoke-static {v4, v2}, Lcom/joyemu/fba/FbaEmu;->setKeyState(II)I

    invoke-static {v1, v0}, Lcom/joyemu/fba/FbaEmu;->setKeyState(II)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_1
    return v1

    :cond_5
    :goto_2
    sget v9, Lcom/joyemu/fbaapp/f;->K:I

    const/4 v10, 0x0

    const/4 v2, 0x4

    sget-boolean v0, Lcom/joyemu/fbaapp/w;->j:Z

    sget-boolean v1, Lcom/joyemu/fbaapp/w;->handfreeTurbo:Z

    or-int/2addr v0, v1

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v2, :cond_b

    sget-object v3, Lcom/joyemu/fbaapp/f;->L:[I

    aget v3, v3, v0

    invoke-static {v0, v3}, Lcom/joyemu/fba/FbaEmu;->setKeyState(II)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_b

    sget-object v3, Lcom/joyemu/fbaapp/f;->L:[I

    aget v3, v3, v0

    sget-object v4, Lcom/joyemu/fbaapp/w;->k:[[Z

    aget-object v4, v4, v0

    const/4 v5, 0x0

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_7

    goto :goto_5

    :cond_7
    if-ne v0, v9, :cond_9

    sget-boolean v4, Lcom/joyemu/fbaapp/w;->handfreeTurbo:Z

    if-eqz v4, :cond_9

    :goto_5
    iget-wide v4, p0, Lcom/joyemu/fba/FbaActivity;->D:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_8

    sget-object v4, Lcom/joyemu/fbaapp/f;->O:[I

    const/4 v5, 0x6

    aget v4, v4, v5

    not-int v4, v4

    and-int/2addr v3, v4

    goto :goto_6

    :cond_8
    sget-object v4, Lcom/joyemu/fbaapp/f;->O:[I

    const/4 v5, 0x6

    aget v4, v4, v5

    or-int/2addr v3, v4

    :cond_9
    :goto_6
    if-ne v0, v9, :cond_a

    move v10, v3

    :cond_a
    invoke-static {v0, v3}, Lcom/joyemu/fba/FbaEmu;->setKeyState(II)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_b
    sget-boolean v0, Lcom/joyemu/fbaapp/w;->j:Z

    sget-boolean v1, Lcom/joyemu/fbaapp/w;->handfreeTurbo:Z

    or-int/2addr v0, v1

    if-nez v0, :cond_c

    sget-object v0, Lcom/joyemu/fbaapp/f;->L:[I

    sget v1, Lcom/joyemu/fbaapp/f;->K:I

    aget v10, v0, v1

    :cond_c
    move v0, v10

    const/4 v6, 0x0

    :goto_7
    const/4 v7, 0x4

    if-ge v6, v7, :cond_e

    sget v7, Lcom/joyemu/fbaapp/f;->activePlayersMask:I

    const/4 v8, 0x1

    shl-int/2addr v8, v6

    and-int/2addr v7, v8

    if-eqz v7, :cond_d

    invoke-static {v6, v0}, Lcom/joyemu/fba/FbaEmu;->setKeyState(II)I

    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_e
    sget v5, Lcom/joyemu/fbaapp/f;->activePlayersMask:I

    sget v6, Lcom/joyemu/fbaapp/f;->K:I

    const/4 v7, 0x1

    shl-int/2addr v7, v6

    and-int/2addr v5, v7

    if-nez v5, :cond_f

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/joyemu/fba/FbaEmu;->setKeyState(II)I

    :cond_f
    goto :goto_8

    :goto_8
    const/4 v1, 0x0

    iget v0, p0, Lcom/joyemu/fba/FbaActivity;->d:I

    if-lez v0, :cond_10

    invoke-static {v1, v0}, Lcom/joyemu/fba/FbaEmu;->setKeyState(II)I

    sget-object v0, Lcom/joyemu/fbaapp/f;->L:[I

    aput v1, v0, v1

    iput v1, p0, Lcom/joyemu/fba/FbaActivity;->d:I

    :cond_10
    return v1
.end method

.method d()V
    .locals 6

    new-instance v0, Lcom/joyemu/fba/g;

    invoke-direct {v0, p0}, Lcom/joyemu/fba/g;-><init>(Lcom/joyemu/fba/FbaActivity;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f010c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f010b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0f0109

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v2, v5

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0f0108

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    aput-object v3, v2, v5

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0f010a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    aput-object v3, v2, v5

    const v3, 0x7f0f010d

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method e()V
    .locals 3

    new-instance v0, Lcom/joyemu/fba/c;

    invoke-direct {v0, p0}, Lcom/joyemu/fba/c;-><init>(Lcom/joyemu/fba/FbaActivity;)V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public f()V
    .locals 3

    new-instance v0, Lcom/joyemu/fba/m;

    invoke-direct {v0, p0}, Lcom/joyemu/fba/m;-><init>(Lcom/joyemu/fba/FbaActivity;)V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_all_files

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    const/4 v1, -0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-ne p2, v1, :cond_3

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    sget-object p2, Lcom/joyemu/fbaapp/DeviceListActivity;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/joyemu/fba/FbaActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-ne p2, v1, :cond_3

    invoke-direct {p0}, Lcom/joyemu/fba/FbaActivity;->m()V

    goto :goto_0

    :cond_2
    if-ne p2, v1, :cond_3

    invoke-direct {p0}, Lcom/joyemu/fba/FbaActivity;->n()V

    :cond_3
    :goto_0
    return-void

    :cond_all_files
    invoke-direct {p0}, Lcom/joyemu/fba/FbaActivity;->h()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const/4 v1, -0x1

    const v2, 0x7f0902d2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const v2, 0x7f0902d3

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const v2, 0x7f0902d4

    if-ne v0, v2, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const v2, 0x7f0902d5

    if-ne v0, v2, :cond_3

    const/4 v1, 0x3

    :cond_3
    :goto_0
    if-ltz v1, :cond_5

    sget v0, Lcom/joyemu/fbaapp/f;->activePlayersMask:I

    const/4 v2, 0x1

    shl-int/2addr v2, v1

    if-nez p2, :cond_4

    not-int v2, v2

    and-int/2addr v0, v2

    goto :goto_1

    :cond_4
    or-int/2addr v0, v2

    :goto_1
    sput v0, Lcom/joyemu/fbaapp/f;->activePlayersMask:I

    :cond_5
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    const v2, 0x7f0902d6

    if-ne v0, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const v2, 0x7f0902d7

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const v2, 0x7f0902d8

    if-ne v0, v2, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const v2, 0x7f0902d9

    if-ne v0, v2, :cond_3

    const/4 v1, 0x3

    :cond_3
    :goto_0
    if-ltz v1, :cond_6

    iget-object v0, p0, Lcom/joyemu/fba/FbaActivity;->mPlayerCheckBoxes:[Landroid/widget/CheckBox;

    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x4

    if-ge v2, v3, :cond_5

    aget-object v3, v0, v2

    if-ne v2, v1, :cond_4

    const/4 p0, 0x1

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    :goto_2
    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setChecked(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x1

    shl-int/2addr v2, v1

    sput v2, Lcom/joyemu/fbaapp/f;->activePlayersMask:I

    :cond_6
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/joyemu/fbaapp/w;->handfreeTurbo:Z

    invoke-static {}, Lcom/joyemu/fbaapp/d;->a()Lcom/joyemu/fbaapp/d;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/joyemu/fbaapp/d;->a(Landroid/app/Activity;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v1, "romPath"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string v2, ""

    if-eq v1, v2, :cond_9

    iput-object v1, p0, Lcom/joyemu/fba/FbaActivity;->f:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "startMode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/joyemu/fba/FbaActivity;->h:I

    iget v2, p0, Lcom/joyemu/fba/FbaActivity;->h:I

    if-ne v2, p1, :cond_0

    const-string v2, "statePath"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/joyemu/fba/FbaActivity;->g:Ljava/lang/String;

    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/joyemu/fbaapp/f;->x:I

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const v2, 0x7f0c0031

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/joyemu/fba/FbaActivity;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/joyemu/fba/FbaActivity;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const v0, 0x7f090094

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/joyemu/fba/FbaView;

    iput-object v0, p0, Lcom/joyemu/fba/FbaActivity;->e:Lcom/joyemu/fba/q;

    invoke-virtual {v0}, Lcom/joyemu/fba/FbaView;->g()V

    goto :goto_0

    :cond_1
    const v2, 0x7f0c0033

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/joyemu/fba/FbaActivity;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/joyemu/fba/FbaActivity;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const v0, 0x7f09008c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/joyemu/fba/FbaGLSurface;

    iput-object v0, p0, Lcom/joyemu/fba/FbaActivity;->e:Lcom/joyemu/fba/q;

    invoke-virtual {v0}, Lcom/joyemu/fba/FbaGLSurface;->g()V

    :goto_0
    const v0, 0x7f09008e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lb/a/a/h;

    iput-object v0, p0, Lcom/joyemu/fba/FbaActivity;->c:Lb/a/a/h;

    invoke-static {p0}, Lcom/joyemu/fbaapp/f;->i(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/joyemu/fba/FbaActivity;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/joyemu/fbaapp/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/joyemu/fbaapp/w;->b(Landroid/content/Context;Ljava/lang/String;)V

    sget-boolean v0, Lcom/joyemu/fbaapp/f;->t:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/joyemu/fba/FbaActivity;->c:Lb/a/a/h;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iget-object v4, p0, Lcom/joyemu/fba/FbaActivity;->f:Ljava/lang/String;

    invoke-static {v4}, Lcom/joyemu/fbaapp/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/joyemu/fba/FbaActivity;->b:Landroid/view/View;

    sget v6, Lcom/joyemu/fbaapp/w;->e:I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/joyemu/fba/FbaActivity;->c:Lb/a/a/h;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iget-object v4, p0, Lcom/joyemu/fba/FbaActivity;->f:Ljava/lang/String;

    invoke-static {v4}, Lcom/joyemu/fbaapp/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/joyemu/fba/FbaActivity;->b:Landroid/view/View;

    const/4 v6, 0x6

    :goto_1
    invoke-interface {v0, v2, v4, v5, v6}, Lb/a/a/h;->a(Landroid/view/Display;Ljava/lang/String;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/joyemu/fba/FbaActivity;->c:Lb/a/a/h;

    sget-boolean v2, Lcom/joyemu/fbaapp/f;->s:Z

    invoke-interface {v0, v2}, Lb/a/a/h;->setActive(Z)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "GameMenuAct.action"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/joyemu/fba/FbaActivity$b;

    invoke-direct {v2, p0, v3}, Lcom/joyemu/fba/FbaActivity$b;-><init>(Lcom/joyemu/fba/FbaActivity;Lcom/joyemu/fba/e;)V

    iput-object v2, p0, Lcom/joyemu/fba/FbaActivity;->k:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/joyemu/fba/FbaActivity;->k:Landroid/content/BroadcastReceiver;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    if-lt v3, v4, :receiver_legacy

    const/4 v4, 0x4

    invoke-virtual {p0, v2, v0, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :receiver_done

:receiver_legacy
    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

:receiver_done

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/joyemu/fba/FbaActivity;->m:Landroid/media/AudioManager;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    invoke-direct {p0}, Lcom/joyemu/fba/FbaActivity;->i()V

    iget-object v2, p0, Lcom/joyemu/fba/FbaActivity;->f:Ljava/lang/String;

    sget-object v3, Lcom/joyemu/fbaapp/f;->U:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    iput v0, p0, Lcom/joyemu/fba/FbaActivity;->h:I

    :goto_2
    invoke-virtual {p0}, Lcom/joyemu/fba/FbaActivity;->a()V

    sget-object v2, Lcom/joyemu/fbaapp/f;->N:[[I

    aget-object v2, v2, v1

    aget v2, v2, p1

    iput v2, p0, Lcom/joyemu/fba/FbaActivity;->n:I

    iget v2, p0, Lcom/joyemu/fba/FbaActivity;->i:I

    if-eqz v2, :cond_4

    const v0, 0x7f0f00e1

    invoke-static {p0, v0, v1}, Lcom/joyemu/fba/ToastCompat;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget v1, p0, Lcom/joyemu/fba/FbaActivity;->i:I

    const-string v2, "game"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_4
    sget v2, Lcom/joyemu/fbaapp/f;->D:I

    if-eq v2, p1, :cond_7

    if-ne v2, v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 p1, 0x2

    if-eq v2, p1, :cond_6

    const/4 p1, 0x4

    if-ne v2, p1, :cond_8

    :cond_6
    sput-boolean v1, Lcom/joyemu/fbaapp/f;->E:Z

    goto :goto_4

    :cond_7
    :goto_3
    sput-boolean p1, Lcom/joyemu/fbaapp/f;->E:Z

    :cond_8
    :goto_4
    sget p1, Lcom/joyemu/fbaapp/f;->D:I

    invoke-static {p0, p1}, Lcom/joyemu/fbaapp/f;->b(Landroid/content/Context;I)V

    return-void

    :cond_9
    invoke-direct {p0}, Lcom/joyemu/fba/FbaActivity;->h()V

    :cond_a
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/joyemu/fba/FbaActivity;->j()Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const-string v0, "menu"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/joyemu/fba/FbaActivity;->j:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/joyemu/fba/FbaActivity;->j:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/joyemu/fba/FbaActivity;->k:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/joyemu/fba/FbaActivity;->k:Landroid/content/BroadcastReceiver;

    :cond_1
    iget-object v0, p0, Lcom/joyemu/fba/FbaActivity;->l:Lcom/joyemu/fba/FbaActivity$a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iput-object v1, p0, Lcom/joyemu/fba/FbaActivity;->l:Lcom/joyemu/fba/FbaActivity$a;

    :cond_2
    invoke-direct {p0}, Lcom/joyemu/fba/FbaActivity;->o()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    sget v0, Lcom/joyemu/fbaapp/f;->activePlayersMask:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput v0, Lcom/joyemu/fbaapp/f;->activePlayersMask:I

    const-string v1, "\u6ca1\u6709\u52fe\u9009\u65f6\u4f1a\u9ed8\u8ba4\u4e3a\u73a9\u5bb61"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/joyemu/fba/ToastCompat;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/joyemu/fba/FbaActivity;->mPlayerDialogShowing:Z

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    sget-boolean v2, Lcom/joyemu/fbaapp/f;->u:Z

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v2

    invoke-static {v2}, Lcom/joyemu/fbaapp/f;->a(Landroid/view/InputDevice;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    invoke-static {v0, v1}, Lcom/joyemu/newinput/a/a;->a(FF)F

    move-result v4

    const/16 v5, 0x8

    invoke-static {v4, v5}, Lcom/joyemu/newinput/a/a;->a(FI)I

    move-result v4

    mul-float v0, v0, v0

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sget-object v1, Lcom/joyemu/fbaapp/f;->L:[I

    aget v5, v1, v2

    and-int/lit8 v5, v5, -0x10

    aput v5, v1, v2

    const v5, 0x3dcccccd    # 0.1f

    cmpl-float v0, v0, v5

    if-lez v0, :cond_2

    if-eq v4, v3, :cond_2

    aget v0, v1, v2

    invoke-static {v4}, Lcom/joyemu/newinput/a;->a(I)I

    move-result v3

    or-int/2addr v0, v3

    aput v0, v1, v2

    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/16 v0, 0x19

    if-ne p1, v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_1
    sget-boolean v0, Lcom/joyemu/fbaapp/f;->u:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-static {v0}, Lcom/joyemu/fbaapp/f;->a(Landroid/view/InputDevice;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    invoke-direct {p0, v0, p1, v1}, Lcom/joyemu/fba/FbaActivity;->a(IIZ)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/16 v0, 0x6d

    if-ne p1, v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    invoke-static {}, Lcom/joyemu/fbaapp/f;->a()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p1, p0, Lcom/joyemu/fba/FbaActivity;->l:Lcom/joyemu/fba/FbaActivity$a;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/joyemu/fba/FbaActivity;->c:Lb/a/a/h;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lb/a/a/h;->setEditMode(Z)V

    iget-object p1, p0, Lcom/joyemu/fba/FbaActivity;->l:Lcom/joyemu/fba/FbaActivity$a;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object p1, p0, Lcom/joyemu/fba/FbaActivity;->e:Lcom/joyemu/fba/q;

    invoke-interface {p1, p2}, Lcom/joyemu/fba/q;->a(Z)V

    return v1

    :cond_4
    invoke-virtual {p0}, Lcom/joyemu/fba/FbaActivity;->e()V

    return v1

    :cond_5
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    sget-boolean v0, Lcom/joyemu/fbaapp/f;->u:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object p2

    invoke-static {p2}, Lcom/joyemu/fbaapp/f;->a(Landroid/view/InputDevice;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lcom/joyemu/fba/FbaActivity;->a(IIZ)Z

    return v1

    :cond_1
    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    sget-boolean p1, Lcom/joyemu/fbaapp/f;->J:Z

    if-nez p1, :cond_2

    :cond_2
    return v1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 0

    iget-object p1, p0, Lcom/joyemu/fba/FbaActivity;->u:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    const/4 p1, 0x0

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const-string v0, "tmpcheat.ini"

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-class v0, Lcom/joyemu/fbaapp/OptionAct;

    :goto_0
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    :pswitch_2
    iget-object p1, p0, Lcom/joyemu/fba/FbaActivity;->l:Lcom/joyemu/fba/FbaActivity$a;

    if-nez p1, :cond_0

    new-instance p1, Lcom/joyemu/fba/FbaActivity$a;

    invoke-direct {p1, p0, p0}, Lcom/joyemu/fba/FbaActivity$a;-><init>(Lcom/joyemu/fba/FbaActivity;Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/joyemu/fba/FbaActivity;->l:Lcom/joyemu/fba/FbaActivity$a;

    iget-object p1, p0, Lcom/joyemu/fba/FbaActivity;->l:Lcom/joyemu/fba/FbaActivity$a;

    iget-object v0, p0, Lcom/joyemu/fba/FbaActivity;->s:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    :cond_0
    iget-object p1, p0, Lcom/joyemu/fba/FbaActivity;->l:Lcom/joyemu/fba/FbaActivity$a;

    const v0, 0x7f09008d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x31

    invoke-virtual {p1, v0, v3, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object p1, p0, Lcom/joyemu/fba/FbaActivity;->c:Lb/a/a/h;

    invoke-interface {p1, v1}, Lb/a/a/h;->setEditMode(Z)V

    iget-object p1, p0, Lcom/joyemu/fba/FbaActivity;->e:Lcom/joyemu/fba/q;

    invoke-interface {p1, v1}, Lcom/joyemu/fba/q;->a(Z)V

    goto/16 :goto_3

    :pswitch_3
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-class v0, Lcom/joyemu/fbaapp/GameSettingScreen;

    goto :goto_1

    :pswitch_4
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-class v0, Lcom/joyemu/fbaapp/GameSettingCombiKey;

    :goto_1
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, p1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3

    :pswitch_5
    iget-object p1, p0, Lcom/joyemu/fba/FbaActivity;->l:Lcom/joyemu/fba/FbaActivity$a;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/joyemu/fba/FbaActivity;->l:Lcom/joyemu/fba/FbaActivity$a;

    :cond_1
    iget-object p1, p0, Lcom/joyemu/fba/FbaActivity;->e:Lcom/joyemu/fba/q;

    invoke-interface {p1}, Lb/a/a/g;->onClose()V

    new-instance p1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/joyemu/fbaapp/f;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_3

    :pswitch_6
    new-instance p1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/joyemu/fbaapp/f;->m:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/joyemu/fba/FbaActivity;->f:Ljava/lang/String;

    invoke-static {v4}, Lcom/joyemu/fbaapp/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".ini"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/joyemu/fbaapp/f;->n:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const p1, 0x7f0f010e

    invoke-static {p0, p1, v2}, Lcom/joyemu/fba/ToastCompat;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_3

    :cond_3
    :goto_2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-class v0, Lcom/joyemu/fbaapp/GameCheat;

    goto/16 :goto_0

    :cond_4
    :goto_3
    return v1

    :pswitch_data_0
    .packed-switch 0x7f090089
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 2

    iget-object v0, p0, Lcom/joyemu/fba/FbaActivity;->l:Lcom/joyemu/fba/FbaActivity$a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/joyemu/fba/FbaActivity;->e:Lcom/joyemu/fba/q;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/joyemu/fba/q;->a(Z)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    iget-object v0, p0, Lcom/joyemu/fba/FbaActivity;->e:Lcom/joyemu/fba/q;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/joyemu/fba/q;->b(I)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    sput-object v0, Lcom/joyemu/fba/FbaActivity;->sInstance:Lcom/joyemu/fba/FbaActivity;

    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f090135

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x14f9

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const p1, 0x7f0900ef

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string p2, "lastNetAddr"

    const-string v0, ""

    invoke-static {p0, p2, v0}, Lcom/joyemu/fbaapp/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    iget-object v0, p0, Lcom/joyemu/fba/FbaActivity;->e:Lcom/joyemu/fba/q;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/joyemu/fba/q;->a(Z)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0x65

    if-eq p1, v0, :bluetooth_result

    const/16 v0, 0x64

    if-eq p1, v0, :storage_result

    goto :perm_super

:bluetooth_result
    array-length v0, p3

    const/4 v1, 0x3

    if-ge v0, v1, :bluetooth_check_results

    goto :perm_super

:bluetooth_check_results
    const/4 v0, 0x0

:bluetooth_loop
    const/4 v1, 0x3

    if-ge v0, v1, :bluetooth_granted

    aget v2, p3, v0

    if-nez v2, :perm_super

    add-int/lit8 v0, v0, 0x1

    goto :bluetooth_loop

:bluetooth_granted
    invoke-direct {p0}, Lcom/joyemu/fba/FbaActivity;->n()V

    goto :perm_super

:storage_result
    const/4 v0, 0x0

    aget v1, p3, v0

    if-nez v1, :storage_denied

    const/4 v1, 0x1

    aget v1, p3, v1

    if-nez v1, :storage_denied

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/joyemu/fbaapp/GameListAct;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :storage_finish

:storage_denied
    const v1, 0x7f0f0003

    invoke-static {p0, v1, v0}, Lcom/joyemu/fba/ToastCompat;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

:storage_finish
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

:perm_super
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    iget-object v0, p0, Lcom/joyemu/fba/FbaActivity;->e:Lcom/joyemu/fba/q;

    if-eqz v0, :cond_4

    sget v0, Lcom/joyemu/fbaapp/f;->D:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    if-eq v0, v1, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/joyemu/fbaapp/f;->E:Z

    goto :goto_1

    :cond_2
    :goto_0
    sput-boolean v2, Lcom/joyemu/fbaapp/f;->E:Z

    :cond_3
    :goto_1
    sget v0, Lcom/joyemu/fbaapp/f;->D:I

    invoke-static {p0, v0}, Lcom/joyemu/fbaapp/f;->b(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/joyemu/fba/FbaActivity;->c:Lb/a/a/h;

    sget-boolean v2, Lcom/joyemu/fbaapp/f;->s:Z

    invoke-interface {v0, v2}, Lb/a/a/h;->setActive(Z)V

    iget-object v0, p0, Lcom/joyemu/fba/FbaActivity;->e:Lcom/joyemu/fba/q;

    invoke-interface {v0}, Lcom/joyemu/fba/q;->c()V

    iget-object v0, p0, Lcom/joyemu/fba/FbaActivity;->e:Lcom/joyemu/fba/q;

    invoke-interface {v0, v1}, Lcom/joyemu/fba/q;->b(I)V

    invoke-virtual {p0}, Lcom/joyemu/fba/FbaActivity;->refreshCombiPresetIcons()V

    :cond_4
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sput-object p0, Lcom/joyemu/fba/FbaActivity;->sInstance:Lcom/joyemu/fba/FbaActivity;

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public refreshCombiPresetIcons()V
    .locals 15

    invoke-direct {p0}, Lcom/joyemu/fba/FbaActivity;->getCurrentSkinPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    new-array v3, v1, [I

    fill-array-data v3, :array_1

    iget-object v4, p0, Lcom/joyemu/fba/FbaActivity;->c:Lb/a/a/h;

    if-eqz v4, :cond_4

    check-cast v4, Lcom/joyemu/newinput/GameOverlay;

    move-object v12, v4

    iget-object v5, v4, Lcom/joyemu/newinput/GameOverlay;->h:Lcom/joyemu/newinput/a/b;

    if-eqz v5, :cond_4

    check-cast v5, Lcom/joyemu/newinput/a/a;

    move-object v4, v5

    invoke-virtual {p0}, Lcom/joyemu/fba/FbaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_4

    sget-object v7, Lcom/joyemu/fbaapp/f;->O:[I

    aget v8, v3, v6

    aget v7, v7, v8

    invoke-direct {p0, v7, v6}, Lcom/joyemu/fba/FbaActivity;->getPresetImageName(II)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".png"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "_P.png"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v9}, Lb/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-static {p0, v10}, Lb/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    iget-object v11, v4, Lcom/joyemu/newinput/a/a;->k:[Lcom/joyemu/newinput/c;

    aget v13, v2, v6

    aget-object v11, v11, v13

    if-eqz v11, :cond_3

    iget-object v13, v11, Lcom/joyemu/newinput/c;->b:[Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v9, :cond_0

    new-instance v14, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v14, v5, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget v8, v11, Lcom/joyemu/newinput/c;->g:I

    invoke-virtual {v14, v8}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    const/4 v7, 0x0

    aput-object v14, v13, v7

    :cond_0
    if-eqz v10, :cond_2

    const/4 v7, 0x1

    aget-object v14, v13, v7

    if-nez v14, :cond_1

    new-instance v14, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v14, v5, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v14, v13, v7

    :cond_1
    invoke-virtual {v14, v10}, Landroid/graphics/drawable/BitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    iget-boolean v9, v11, Lcom/joyemu/newinput/c;->p:Z

    if-eqz v9, :cond_3

    iget v9, v11, Lcom/joyemu/newinput/c;->i:I

    iget v10, v11, Lcom/joyemu/newinput/c;->j:I

    invoke-virtual {v11, v9, v10}, Lcom/joyemu/newinput/c;->b(II)V

    invoke-virtual {v12}, Lcom/joyemu/newinput/GameOverlay;->invalidate()V

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_4
    return-void

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
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
    .end array-data
.end method

.method public showPlayerSelectDialog()V
    .locals 8

    iget-boolean v0, p0, Lcom/joyemu/fba/FbaActivity;->mPlayerDialogShowing:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/joyemu/fba/FbaActivity;->mPlayerDialogShowing:Z

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c007f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x4

    new-array v4, v3, [Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/joyemu/fba/FbaActivity;->mPlayerCheckBoxes:[Landroid/widget/CheckBox;

    new-array v5, v3, [Landroid/widget/TextView;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget v6, v2, v0

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    aput-object v6, v4, v0

    add-int/lit8 v6, v0, 0x4

    aget v6, v2, v6

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    aput-object v6, v5, v0

    sget v6, Lcom/joyemu/fbaapp/f;->activePlayersMask:I

    const/4 v7, 0x1

    shl-int/2addr v7, v0

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    aget-object v7, v4, v0

    invoke-virtual {v7, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    aget-object v6, v4, v0

    invoke-virtual {v6, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    aget-object v6, v5, v0

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u52fe\u9009\u60f3\u8981\u63a7\u5236\u7684\u73a9\u5bb6"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, -0x2

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x7f0902d2
        0x7f0902d3
        0x7f0902d4
        0x7f0902d5
        0x7f0902d6
        0x7f0902d7
        0x7f0902d8
        0x7f0902d9
    .end array-data
.end method
