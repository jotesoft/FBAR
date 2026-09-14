.class public Lcom/joyemu/fba/FbaView;
.super Landroid/view/SurfaceView;
.source ""

# interfaces
.implements Lcom/joyemu/fba/q;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Ljava/lang/Runnable;


# instance fields
.field a:Lcom/joyemu/fba/FbaActivity;

.field private b:Landroid/graphics/Bitmap;

.field c:Landroid/view/SurfaceHolder;

.field private d:I

.field private e:I

.field private f:Landroid/graphics/Rect;

.field g:I

.field h:I

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/Thread;

.field private n:Ljava/lang/Thread;

.field o:Lb/a/a/f;

.field private p:Landroid/graphics/Paint;

.field private q:J

.field private r:I

.field private s:Z

.field t:I

.field u:Ljava/lang/String;

.field private v:I

.field w:I

.field final x:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/joyemu/fba/FbaView;->c:Landroid/view/SurfaceHolder;

    const/16 v0, 0x140

    iput v0, p0, Lcom/joyemu/fba/FbaView;->d:I

    const/16 v0, 0xf0

    iput v0, p0, Lcom/joyemu/fba/FbaView;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/joyemu/fba/FbaView;->i:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/joyemu/fba/FbaView;->j:Z

    iput-boolean v0, p0, Lcom/joyemu/fba/FbaView;->l:Z

    new-instance v1, Lb/a/a/f;

    invoke-direct {v1}, Lb/a/a/f;-><init>()V

    iput-object v1, p0, Lcom/joyemu/fba/FbaView;->o:Lb/a/a/f;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/joyemu/fba/FbaView;->q:J

    iput v0, p0, Lcom/joyemu/fba/FbaView;->r:I

    iput v0, p0, Lcom/joyemu/fba/FbaView;->t:I

    iput v0, p0, Lcom/joyemu/fba/FbaView;->v:I

    iput v0, p0, Lcom/joyemu/fba/FbaView;->w:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/joyemu/fba/FbaView;->x:Ljava/lang/Object;

    check-cast p1, Lcom/joyemu/fba/FbaActivity;

    iput-object p1, p0, Lcom/joyemu/fba/FbaView;->a:Lcom/joyemu/fba/FbaActivity;

    invoke-virtual {p0}, Lcom/joyemu/fba/FbaView;->g()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/joyemu/fba/FbaView;->c:Landroid/view/SurfaceHolder;

    const/16 p2, 0x140

    iput p2, p0, Lcom/joyemu/fba/FbaView;->d:I

    const/16 p2, 0xf0

    iput p2, p0, Lcom/joyemu/fba/FbaView;->e:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/joyemu/fba/FbaView;->i:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/joyemu/fba/FbaView;->j:Z

    iput-boolean p2, p0, Lcom/joyemu/fba/FbaView;->l:Z

    new-instance v0, Lb/a/a/f;

    invoke-direct {v0}, Lb/a/a/f;-><init>()V

    iput-object v0, p0, Lcom/joyemu/fba/FbaView;->o:Lb/a/a/f;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/joyemu/fba/FbaView;->q:J

    iput p2, p0, Lcom/joyemu/fba/FbaView;->r:I

    iput p2, p0, Lcom/joyemu/fba/FbaView;->t:I

    iput p2, p0, Lcom/joyemu/fba/FbaView;->v:I

    iput p2, p0, Lcom/joyemu/fba/FbaView;->w:I

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/joyemu/fba/FbaView;->x:Ljava/lang/Object;

    check-cast p1, Lcom/joyemu/fba/FbaActivity;

    iput-object p1, p0, Lcom/joyemu/fba/FbaView;->a:Lcom/joyemu/fba/FbaActivity;

    return-void
.end method

.method static synthetic a(Lcom/joyemu/fba/FbaView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/joyemu/fba/FbaView;->k:Z

    return p0
.end method

.method private b(Z)V
    .locals 4

    iget-boolean p1, p0, Lcom/joyemu/fba/FbaView;->j:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/joyemu/fba/FbaView;->c:Landroid/view/SurfaceHolder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/joyemu/fba/FbaView;->s:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/joyemu/fba/FbaView;->m()V

    sget-boolean v0, Lcom/joyemu/fbaapp/f;->s:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/joyemu/fba/FbaView;->a:Lcom/joyemu/fba/FbaActivity;

    invoke-virtual {v0}, Lcom/joyemu/fba/FbaActivity;->f()V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/joyemu/fba/FbaView;->s:Z

    :cond_3
    iget v0, p0, Lcom/joyemu/fba/FbaView;->r:I

    const/high16 v1, -0x1000000

    if-lez v0, :cond_4

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    iget v0, p0, Lcom/joyemu/fba/FbaView;->r:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/joyemu/fba/FbaView;->r:I

    :cond_4
    iget v0, p0, Lcom/joyemu/fba/FbaView;->v:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_5

    iget-boolean v0, p0, Lcom/joyemu/fba/FbaView;->i:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/joyemu/fba/FbaView;->b:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/joyemu/fba/FbaEmu;->drawBmp(Landroid/graphics/Bitmap;)I

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    :goto_0
    iget-object v0, p0, Lcom/joyemu/fba/FbaView;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/joyemu/fba/FbaView;->f:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/joyemu/fba/FbaView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/joyemu/fba/FbaView;->c:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private m()V
    .locals 7

    sget-boolean v0, Lcom/joyemu/fbaapp/f;->E:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v0, :cond_5

    sget v0, Lcom/joyemu/fbaapp/f;->B:I

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/joyemu/fba/FbaView;->g:I

    iget v3, p0, Lcom/joyemu/fba/FbaView;->h:I

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_1

    :cond_0
    if-ne v0, v5, :cond_1

    iget v0, p0, Lcom/joyemu/fba/FbaView;->h:I

    mul-int/lit8 v1, v0, 0x10

    div-int/2addr v1, v4

    div-int/2addr v1, v4

    iget v2, p0, Lcom/joyemu/fba/FbaView;->g:I

    sub-int/2addr v2, v1

    div-int/2addr v2, v5

    sub-int v3, v0, v0

    div-int/2addr v3, v5

    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v1, v2

    add-int/2addr v0, v3

    invoke-direct {v4, v2, v3, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_2

    :cond_1
    if-ne v0, v4, :cond_2

    iget v0, p0, Lcom/joyemu/fba/FbaView;->h:I

    mul-int/lit8 v1, v0, 0x3

    div-int/2addr v1, v3

    iget v2, p0, Lcom/joyemu/fba/FbaView;->g:I

    sub-int/2addr v2, v1

    div-int/2addr v2, v5

    sub-int v3, v0, v0

    div-int/2addr v3, v5

    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v1, v2

    add-int/2addr v0, v3

    invoke-direct {v4, v2, v3, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_2

    :cond_2
    if-ne v0, v3, :cond_3

    iget v0, p0, Lcom/joyemu/fba/FbaView;->h:I

    mul-int/lit8 v1, v0, 0x4

    div-int/2addr v1, v4

    iget v2, p0, Lcom/joyemu/fba/FbaView;->g:I

    sub-int/2addr v2, v1

    div-int/2addr v2, v5

    sub-int v3, v0, v0

    div-int/2addr v3, v5

    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v1, v2

    add-int/2addr v0, v3

    invoke-direct {v4, v2, v3, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/joyemu/fba/FbaView;->d:I

    iget v1, p0, Lcom/joyemu/fba/FbaView;->h:I

    mul-int v2, v0, v1

    iget v3, p0, Lcom/joyemu/fba/FbaView;->e:I

    iget v4, p0, Lcom/joyemu/fba/FbaView;->g:I

    mul-int v6, v3, v4

    if-le v2, v6, :cond_4

    mul-int v3, v3, v4

    div-int v1, v3, v0

    goto :goto_0

    :cond_4
    mul-int v0, v0, v1

    div-int v4, v0, v3

    :goto_0
    iget v0, p0, Lcom/joyemu/fba/FbaView;->g:I

    sub-int/2addr v0, v4

    div-int/2addr v0, v5

    iget v2, p0, Lcom/joyemu/fba/FbaView;->h:I

    sub-int/2addr v2, v1

    div-int/2addr v2, v5

    new-instance v3, Landroid/graphics/Rect;

    add-int/2addr v4, v0

    add-int/2addr v1, v2

    invoke-direct {v3, v0, v2, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/joyemu/fba/FbaView;->f:Landroid/graphics/Rect;

    goto :goto_3

    :cond_5
    sget v0, Lcom/joyemu/fbaapp/f;->B:I

    if-ne v0, v1, :cond_6

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/joyemu/fba/FbaView;->g:I

    iget v3, p0, Lcom/joyemu/fba/FbaView;->h:I

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_1
    iput-object v0, p0, Lcom/joyemu/fba/FbaView;->f:Landroid/graphics/Rect;

    goto :goto_3

    :cond_6
    if-ne v0, v5, :cond_7

    iget v0, p0, Lcom/joyemu/fba/FbaView;->g:I

    mul-int/lit8 v1, v0, 0x9

    div-int/2addr v1, v3

    div-int/2addr v1, v3

    sub-int v2, v0, v0

    div-int/2addr v2, v5

    iget v3, p0, Lcom/joyemu/fba/FbaView;->h:I

    sub-int/2addr v3, v1

    div-int/2addr v3, v5

    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v0, v2

    add-int/2addr v1, v3

    invoke-direct {v4, v2, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_2
    iput-object v4, p0, Lcom/joyemu/fba/FbaView;->f:Landroid/graphics/Rect;

    goto :goto_3

    :cond_7
    if-ne v0, v4, :cond_8

    iget v0, p0, Lcom/joyemu/fba/FbaView;->g:I

    mul-int/lit8 v1, v0, 0x4

    div-int/2addr v1, v4

    sub-int v2, v0, v0

    div-int/2addr v2, v5

    iget v3, p0, Lcom/joyemu/fba/FbaView;->h:I

    sub-int/2addr v3, v1

    div-int/2addr v3, v5

    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v0, v2

    add-int/2addr v1, v3

    invoke-direct {v4, v2, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_2

    :cond_8
    if-ne v0, v3, :cond_9

    iget v0, p0, Lcom/joyemu/fba/FbaView;->g:I

    mul-int/lit8 v1, v0, 0x3

    div-int/2addr v1, v3

    sub-int v2, v0, v0

    div-int/2addr v2, v5

    iget v3, p0, Lcom/joyemu/fba/FbaView;->h:I

    sub-int/2addr v3, v1

    div-int/2addr v3, v5

    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v0, v2

    add-int/2addr v1, v3

    invoke-direct {v4, v2, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_2

    :cond_9
    iget v0, p0, Lcom/joyemu/fba/FbaView;->g:I

    iget v1, p0, Lcom/joyemu/fba/FbaView;->e:I

    mul-int v1, v1, v0

    iget v2, p0, Lcom/joyemu/fba/FbaView;->d:I

    div-int/2addr v1, v2

    sub-int v2, v0, v0

    div-int/2addr v2, v5

    iget v3, p0, Lcom/joyemu/fba/FbaView;->h:I

    sub-int/2addr v3, v1

    div-int/2addr v3, v5

    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v0, v2

    add-int/2addr v1, v3

    invoke-direct {v4, v2, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_2

    :goto_3
    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    invoke-static {}, Lcom/joyemu/fba/FbaEmu;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/joyemu/fba/FbaView;->d:I

    invoke-static {}, Lcom/joyemu/fba/FbaEmu;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/joyemu/fba/FbaView;->e:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/joyemu/fba/FbaView;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/joyemu/fba/FbaView;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/joyemu/fba/FbaView;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/joyemu/fba/FbaView;->d:I

    iget v1, p0, Lcom/joyemu/fba/FbaView;->e:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/joyemu/fba/FbaView;->b:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/joyemu/fba/FbaView;->b:Landroid/graphics/Bitmap;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/joyemu/fba/FbaView;->j:Z

    iput-boolean v0, p0, Lcom/joyemu/fba/FbaView;->k:Z

    const-string v0, "emuResumeLast"

    invoke-static {v0}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/graphics/Bitmap;Ljava/lang/String;II)I
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p2, -0x1

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    if-lez p3, :cond_0

    if-lez p4, :cond_0

    const/4 v0, 0x1

    invoke-static {p1, p3, p4, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_0
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p4, 0x64

    invoke-virtual {p1, p3, p4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    const/4 p1, 0x0

    return p1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return p2

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return p2

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return p2
.end method

.method public a(Ljava/lang/String;)I
    .locals 2

    invoke-static {p1}, Lcom/joyemu/fba/FbaEmu;->loadState(Ljava/lang/String;)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emu_loadstate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    return p1
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/joyemu/fba/FbaView;->w:I

    return-void
.end method

.method public a(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/joyemu/fba/FbaView;->j:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/joyemu/fba/FbaView;->l:Z

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lcom/joyemu/fba/FbaView;->i:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emuSetPause:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)I
    .locals 6

    invoke-virtual {p0}, Lcom/joyemu/fba/FbaView;->j()I

    invoke-static {p1}, Lcom/joyemu/fba/FbaEmu;->loadRom(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    sget-boolean v1, Lcom/joyemu/fbaapp/f;->w:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-static {v3}, Lcom/joyemu/fba/FbaEmu;->setSoundEnable(I)I

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/joyemu/fba/FbaEmu;->setSoundEnable(I)I

    :goto_0
    invoke-static {}, Lcom/joyemu/fba/FbaEmu;->getVideoWidth()I

    move-result v1

    iput v1, p0, Lcom/joyemu/fba/FbaView;->d:I

    invoke-static {}, Lcom/joyemu/fba/FbaEmu;->getVideoHeight()I

    move-result v1

    iput v1, p0, Lcom/joyemu/fba/FbaView;->e:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video size:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/joyemu/fba/FbaView;->d:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/joyemu/fba/FbaView;->e:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/joyemu/fba/FbaView;->b:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    iget v1, p0, Lcom/joyemu/fba/FbaView;->d:I

    iget v4, p0, Lcom/joyemu/fba/FbaView;->e:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/joyemu/fba/FbaView;->b:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v1, p0, Lcom/joyemu/fba/FbaView;->b:Landroid/graphics/Bitmap;

    const/high16 v4, -0x1000000

    invoke-virtual {v1, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iput-boolean v3, p0, Lcom/joyemu/fba/FbaView;->j:Z

    iput-boolean v3, p0, Lcom/joyemu/fba/FbaView;->k:Z

    sput-object p1, Lcom/joyemu/fbaapp/f;->U:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v1, v2}, Lcom/joyemu/fba/FbaEmu;->getRomInfo(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/joyemu/fbaapp/w;->d:I

    iput-boolean v3, p0, Lcom/joyemu/fba/FbaView;->s:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "emuLoadrom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    return v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/joyemu/fba/FbaView;->t:I

    return-void
.end method

.method public b(I)V
    .locals 1

    iput p1, p0, Lcom/joyemu/fba/FbaView;->v:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget p1, Lcom/joyemu/fba/FbaEmu;->a:I

    sget v0, Lcom/joyemu/fba/FbaEmu;->b:I

    invoke-static {p1, v0}, Lcom/joyemu/fba/FbaEmu;->setControl(II)I

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    iget-boolean v0, p0, Lcom/joyemu/fba/FbaView;->j:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/joyemu/fbaapp/f;->w:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/joyemu/fba/FbaEmu;->setSoundEnable(I)I

    :cond_1
    invoke-direct {p0}, Lcom/joyemu/fba/FbaView;->m()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/joyemu/fba/FbaView;->r:I

    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GameLoadState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/joyemu/fba/FbaView;->l:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/joyemu/fba/FbaView;->t:I

    iput-object p1, p0, Lcom/joyemu/fba/FbaView;->u:Ljava/lang/String;

    return v0
.end method

.method public d()V
    .locals 3

    const-string v0, "onSaveState"

    invoke-static {v0}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/joyemu/fba/FbaView;->l:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/joyemu/fba/FbaView;->a(Z)V

    new-instance v0, Lcom/joyemu/fbaapp/Fa;

    iget-object v1, p0, Lcom/joyemu/fba/FbaView;->a:Lcom/joyemu/fba/FbaActivity;

    sget-object v2, Lcom/joyemu/fbaapp/f;->U:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/joyemu/fbaapp/Fa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/joyemu/fbaapp/Fa;->a(Lcom/joyemu/fba/q;)V

    invoke-virtual {v0}, Lcom/joyemu/fbaapp/Fa;->b()V

    return-void
.end method

.method public d(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GameSaveState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/joyemu/fba/FbaView;->l:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/joyemu/fba/FbaView;->t:I

    iput-object p1, p0, Lcom/joyemu/fba/FbaView;->u:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public e()V
    .locals 3

    const-string v0, "onLoadState"

    invoke-static {v0}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/joyemu/fba/FbaView;->l:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/joyemu/fba/FbaView;->a(Z)V

    new-instance v0, Lcom/joyemu/fbaapp/Fa;

    iget-object v1, p0, Lcom/joyemu/fba/FbaView;->a:Lcom/joyemu/fba/FbaActivity;

    sget-object v2, Lcom/joyemu/fbaapp/f;->U:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/joyemu/fbaapp/Fa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/joyemu/fbaapp/Fa;->a(Lcom/joyemu/fba/q;)V

    invoke-virtual {v0}, Lcom/joyemu/fbaapp/Fa;->a()V

    return-void
.end method

.method public f()V
    .locals 2

    const-string v0, "onRestart"

    invoke-static {v0}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/joyemu/fba/FbaView;->l:Z

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/joyemu/fba/FbaView;->a(Z)V

    sget-object v1, Lcom/joyemu/fbaapp/f;->U:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/joyemu/fba/FbaView;->b(Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/joyemu/fba/FbaView;->a(Z)V

    return-void
.end method

.method public g()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/joyemu/fba/FbaView;->c:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/joyemu/fba/FbaView;->c:Landroid/view/SurfaceHolder;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    iget-object v0, p0, Lcom/joyemu/fba/FbaView;->c:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    sget v0, Lcom/joyemu/fbaapp/f;->X:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    sput-boolean v2, Lcom/joyemu/fbaapp/f;->Y:Z

    goto :goto_0

    :cond_0
    sput-boolean v1, Lcom/joyemu/fbaapp/f;->Y:Z

    :goto_0
    invoke-virtual {p0, v2}, Landroid/view/SurfaceView;->setFocusable(Z)V

    invoke-virtual {p0, v2}, Landroid/view/SurfaceView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestFocus()Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/joyemu/fba/FbaView;->p:Landroid/graphics/Paint;

    sget-boolean v0, Lcom/joyemu/fbaapp/f;->y:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/joyemu/fba/FbaView;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/joyemu/fba/FbaView;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    :goto_1
    invoke-virtual {p0}, Lcom/joyemu/fba/FbaView;->i()I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/joyemu/fba/FbaView;->q:J

    iput v1, p0, Lcom/joyemu/fba/FbaView;->r:I

    return-void
.end method

.method getScreenShotPath()Ljava/lang/String;
    .locals 6

    sget-object v0, Lcom/joyemu/fbaapp/f;->U:Ljava/lang/String;

    invoke-static {v0}, Lcom/joyemu/fbaapp/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    const/16 v4, 0x20

    if-ge v2, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/joyemu/fbaapp/f;->i:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ".png"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-lt v2, v4, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "picpath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    return-object v3
.end method

.method public h()I
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/joyemu/fba/FbaView;->k:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/joyemu/fba/FbaView;->i:Z

    invoke-static {}, Lcom/joyemu/fba/FbaEmu;->deinit()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "emu_exit()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    return v0
.end method

.method public i()I
    .locals 3

    sget-boolean v0, Lcom/joyemu/fbaapp/f;->Y:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/joyemu/fba/FbaEmu;->init(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/joyemu/fba/FbaEmu;->init(I)I

    move-result v0

    :goto_0
    iput-boolean v1, p0, Lcom/joyemu/fba/FbaView;->k:Z

    iput-boolean v1, p0, Lcom/joyemu/fba/FbaView;->i:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "emu_init():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    return v0
.end method

.method public j()I
    .locals 3

    iget-boolean v0, p0, Lcom/joyemu/fba/FbaView;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/joyemu/fba/FbaView;->j:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/joyemu/fba/FbaView;->i:Z

    invoke-static {}, Lcom/joyemu/fba/FbaEmu;->unloadRom()I

    move-result v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "emu_unload"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    :cond_0
    const-string v0, ""

    sput-object v0, Lcom/joyemu/fbaapp/f;->U:Ljava/lang/String;

    return v1
.end method

.method k()V
    .locals 5

    iget-boolean v0, p0, Lcom/joyemu/fba/FbaView;->j:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/joyemu/fba/FbaView;->v:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/joyemu/fba/FbaView;->i:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/joyemu/fba/FbaView;->a:Lcom/joyemu/fba/FbaActivity;

    invoke-virtual {v0}, Lcom/joyemu/fba/FbaActivity;->c()I

    iget v0, p0, Lcom/joyemu/fba/FbaView;->t:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/joyemu/fba/FbaView;->u:Ljava/lang/String;

    invoke-static {v0}, Lcom/joyemu/fba/FbaEmu;->loadState(Ljava/lang/String;)I

    :goto_0
    iput v3, p0, Lcom/joyemu/fba/FbaView;->t:I

    goto :goto_1

    :cond_0
    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/joyemu/fba/FbaView;->u:Ljava/lang/String;

    invoke-static {v0}, Lcom/joyemu/fba/FbaEmu;->saveState(Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/joyemu/fba/FbaView;->getScreenShotPath()Ljava/lang/String;

    iget-object v0, p0, Lcom/joyemu/fba/FbaView;->b:Landroid/graphics/Bitmap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/joyemu/fba/FbaView;->u:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".png"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v3, v3}, Lcom/joyemu/fba/FbaView;->a(Landroid/graphics/Bitmap;Ljava/lang/String;II)I

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {v2}, Lcom/joyemu/fba/FbaEmu;->coreLoop(I)I

    goto :goto_2

    :cond_2
    const-wide/16 v0, 0x14

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/joyemu/fba/FbaView;->x:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/joyemu/fba/FbaView;->x:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method l()V
    .locals 5

    iget-boolean v0, p0, Lcom/joyemu/fba/FbaView;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/joyemu/fba/FbaView;->v:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/joyemu/fba/FbaView;->i:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/joyemu/fba/FbaView;->a:Lcom/joyemu/fba/FbaActivity;

    invoke-virtual {v0}, Lcom/joyemu/fba/FbaActivity;->c()I

    iget v0, p0, Lcom/joyemu/fba/FbaView;->t:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/joyemu/fba/FbaView;->u:Ljava/lang/String;

    invoke-static {v0}, Lcom/joyemu/fba/FbaEmu;->loadState(Ljava/lang/String;)I

    :goto_0
    iput v1, p0, Lcom/joyemu/fba/FbaView;->t:I

    goto :goto_1

    :cond_0
    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/joyemu/fba/FbaView;->u:Ljava/lang/String;

    invoke-static {v0}, Lcom/joyemu/fba/FbaEmu;->saveState(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/joyemu/fba/FbaView;->b:Landroid/graphics/Bitmap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/joyemu/fba/FbaView;->u:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".png"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v1, v1}, Lcom/joyemu/fba/FbaView;->a(Landroid/graphics/Bitmap;Ljava/lang/String;II)I

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {v3}, Lcom/joyemu/fba/FbaEmu;->coreLoop(I)I

    move-result v0

    if-ne v0, v3, :cond_3

    invoke-direct {p0, v1}, Lcom/joyemu/fba/FbaView;->b(Z)V

    goto :goto_2

    :cond_2
    invoke-direct {p0, v1}, Lcom/joyemu/fba/FbaView;->b(Z)V

    const-wide/16 v0, 0x14

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method public onClose()V
    .locals 2

    const-string v0, "onClose"

    invoke-static {v0}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/joyemu/fba/FbaView;->x:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/joyemu/fba/FbaView;->x:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/joyemu/fba/FbaView;->l:Z

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/joyemu/fba/FbaView;->a(Z)V

    iput-boolean v0, p0, Lcom/joyemu/fba/FbaView;->k:Z

    :try_start_1
    iget-object v0, p0, Lcom/joyemu/fba/FbaView;->m:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/joyemu/fba/FbaView;->m:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    :cond_0
    iget-object v0, p0, Lcom/joyemu/fba/FbaView;->n:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/joyemu/fba/FbaView;->n:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/joyemu/fba/FbaView;->n:Ljava/lang/Thread;

    iput-object v0, p0, Lcom/joyemu/fba/FbaView;->m:Ljava/lang/Thread;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    invoke-virtual {p0}, Lcom/joyemu/fba/FbaView;->j()I

    invoke-virtual {p0}, Lcom/joyemu/fba/FbaView;->h()I

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    iput p1, p0, Lcom/joyemu/fba/FbaView;->g:I

    iput p2, p0, Lcom/joyemu/fba/FbaView;->h:I

    iget v0, p0, Lcom/joyemu/fba/FbaView;->g:I

    iget v1, p0, Lcom/joyemu/fba/FbaView;->h:I

    if-le v0, v1, :cond_0

    sget v0, Lcom/joyemu/fbaapp/f;->D:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    sget v0, Lcom/joyemu/fbaapp/f;->D:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/joyemu/fbaapp/f;->E:Z

    :cond_1
    invoke-direct {p0}, Lcom/joyemu/fba/FbaView;->m()V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;->onSizeChanged(IIII)V

    return-void
.end method

.method public run()V
    .locals 3

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/joyemu/fba/FbaView;->k:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/joyemu/fbaapp/f;->Y:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/joyemu/fba/FbaView;->b(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/joyemu/fba/FbaView;->l()V

    :goto_1
    iget v0, p0, Lcom/joyemu/fba/FbaView;->t:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/joyemu/fba/FbaView;->getScreenShotPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/joyemu/fba/FbaView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v2, v0, v1, v1}, Lcom/joyemu/fba/FbaView;->a(Landroid/graphics/Bitmap;Ljava/lang/String;II)I

    :cond_2
    iput v1, p0, Lcom/joyemu/fba/FbaView;->t:I

    goto :goto_0

    :cond_3
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    iget-boolean p1, p0, Lcom/joyemu/fba/FbaView;->j:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/joyemu/fba/FbaView;->k:Z

    :cond_0
    sget-boolean p1, Lcom/joyemu/fbaapp/f;->Y:Z

    if-eqz p1, :cond_1

    new-instance p1, Lcom/joyemu/fba/p;

    invoke-direct {p1, p0}, Lcom/joyemu/fba/p;-><init>(Lcom/joyemu/fba/FbaView;)V

    iput-object p1, p0, Lcom/joyemu/fba/FbaView;->n:Ljava/lang/Thread;

    iget-object p1, p0, Lcom/joyemu/fba/FbaView;->n:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_1
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/joyemu/fba/FbaView;->m:Ljava/lang/Thread;

    iget-object p1, p0, Lcom/joyemu/fba/FbaView;->m:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const-string p1, "surfaceCreated()..."

    invoke-static {p1}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/joyemu/fba/FbaView;->k:Z

    const-string p1, "surfaceDestroyed()..."

    invoke-static {p1}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    return-void
.end method
