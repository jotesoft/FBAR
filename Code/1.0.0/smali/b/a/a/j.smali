.class public Lb/a/a/j;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/j$e;,
        Lb/a/a/j$d;,
        Lb/a/a/j$f;,
        Lb/a/a/j$a;,
        Lb/a/a/j$b;,
        Lb/a/a/j$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/UUID;


# instance fields
.field private b:Landroid/os/Handler;

.field private c:Lb/a/a/j$c;

.field private d:Lb/a/a/j$d;

.field private e:Lb/a/a/j$e;

.field private f:Z

.field private g:Z

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "8f996e39-374d-466c-bd0c-e0ced64b4e54"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lb/a/a/j;->a:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lb/a/a/j;->l:Ljava/lang/Object;

    iput-object p1, p0, Lb/a/a/j;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lb/a/a/j;)Lb/a/a/j$e;
    .locals 0

    iget-object p0, p0, Lb/a/a/j;->e:Lb/a/a/j$e;

    return-object p0
.end method

.method private a(SI)Ljava/nio/ByteBuffer;
    .locals 0

    add-int/lit8 p2, p2, 0x2

    invoke-static {p2}, Lb/a/a/j$e;->a(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a()Ljava/util/UUID;
    .locals 1

    sget-object v0, Lb/a/a/j;->a:Ljava/util/UUID;

    return-object v0
.end method

.method private a(Landroid/os/Message;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lb/a/a/j;->g:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendMessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    iget-boolean p1, p0, Lb/a/a/j;->g:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :try_start_2
    iput-boolean p1, p0, Lb/a/a/j;->g:Z

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private a(Lb/a/a/j$c;)V
    .locals 1

    iget-object v0, p0, Lb/a/a/j;->c:Lb/a/a/j$c;

    if-nez v0, :cond_0

    iput-object p1, p0, Lb/a/a/j;->c:Lb/a/a/j$c;

    iget-object p1, p0, Lb/a/a/j;->c:Lb/a/a/j$c;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method static synthetic a(Lb/a/a/j;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lb/a/a/j;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method private a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2

    new-instance v0, Lb/a/a/j$d;

    invoke-direct {v0, p1}, Lb/a/a/j$d;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lb/a/a/j;->d:Lb/a/a/j$d;

    new-instance p1, Lb/a/a/j$e;

    invoke-direct {p1, p2}, Lb/a/a/j$e;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lb/a/a/j;->e:Lb/a/a/j$e;

    iget-boolean p1, p0, Lb/a/a/j;->f:Z

    const/4 p2, 0x1

    const/4 v0, 0x5

    if-eqz p1, :cond_1

    iget-object p1, p0, Lb/a/a/j;->d:Lb/a/a/j$d;

    invoke-virtual {p1}, Lb/a/a/j$d;->a()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    if-ne v1, p2, :cond_0

    invoke-direct {p0, p1}, Lb/a/a/j;->b(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    invoke-direct {p1}, Ljava/net/ProtocolException;-><init>()V

    throw p1

    :cond_1
    invoke-direct {p0}, Lb/a/a/j;->g()V

    iget-object p1, p0, Lb/a/a/j;->d:Lb/a/a/j$d;

    invoke-virtual {p1}, Lb/a/a/j$d;->a()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    if-ne v1, v0, :cond_7

    invoke-direct {p0, p1}, Lb/a/a/j;->e(Ljava/nio/ByteBuffer;)V

    :goto_0
    iget-object p1, p0, Lb/a/a/j;->b:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lb/a/a/j;->a(Landroid/os/Message;)V

    :goto_1
    iget-object p1, p0, Lb/a/a/j;->d:Lb/a/a/j$d;

    invoke-virtual {p1}, Lb/a/a/j$d;->a()Ljava/nio/ByteBuffer;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_5

    const/4 v1, 0x3

    if-eq p2, v1, :cond_4

    const/4 v1, 0x4

    if-eq p2, v1, :cond_3

    if-ne p2, v0, :cond_2

    invoke-direct {p0, p1}, Lb/a/a/j;->e(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/net/ProtocolException;

    invoke-direct {p1}, Ljava/net/ProtocolException;-><init>()V

    throw p1

    :cond_3
    invoke-direct {p0, p1}, Lb/a/a/j;->d(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1}, Lb/a/a/j;->c(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    :cond_5
    invoke-direct {p0, p1}, Lb/a/a/j;->a(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    :cond_6
    return-void

    :cond_7
    new-instance p1, Ljava/net/ProtocolException;

    invoke-direct {p1}, Ljava/net/ProtocolException;-><init>()V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private a(Ljava/nio/ByteBuffer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iget-object v0, p0, Lb/a/a/j;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lb/a/a/j;->k:I

    iget p1, p0, Lb/a/a/j;->j:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lb/a/a/j;->j:I

    iget v1, p0, Lb/a/a/j;->i:I

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lb/a/a/j;->l:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic b(Lb/a/a/j;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lb/a/a/j;->b:Landroid/os/Handler;

    return-object p0
.end method

.method private b(Ljava/nio/ByteBuffer;)V
    .locals 1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "handleHello"

    invoke-static {p1}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    invoke-direct {p1}, Ljava/net/ProtocolException;-><init>()V

    throw p1
.end method

.method private c(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget-object p1, p0, Lb/a/a/j;->b:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lb/a/a/j;->a(Landroid/os/Message;)V

    invoke-direct {p0}, Lb/a/a/j;->f()V

    return-void
.end method

.method private d(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget-object p1, p0, Lb/a/a/j;->b:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lb/a/a/j;->a(Landroid/os/Message;)V

    invoke-direct {p0}, Lb/a/a/j;->f()V

    return-void
.end method

.method private e(Ljava/nio/ByteBuffer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    if-lez p1, :cond_0

    const/high16 v0, 0x200000

    if-gt p1, v0, :cond_0

    const-string v0, "handleSavedState1"

    invoke-static {v0}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    new-array p1, p1, [B

    iget-object v0, p0, Lb/a/a/j;->d:Lb/a/a/j$d;

    invoke-virtual {v0, p1}, Lb/a/a/j$d;->a([B)[B

    iget-object v0, p0, Lb/a/a/j;->b:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lb/a/a/j;->a(Landroid/os/Message;)V

    invoke-direct {p0}, Lb/a/a/j;->f()V

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
.end method

.method private f()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lb/a/a/j;->j:I

    iput v0, p0, Lb/a/a/j;->i:I

    iput v0, p0, Lb/a/a/j;->k:I

    const-string v0, "resetFrame"

    invoke-static {v0}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    return-void
.end method

.method private g()V
    .locals 3

    iget-object v0, p0, Lb/a/a/j;->e:Lb/a/a/j$e;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lb/a/a/j;->a(SI)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/a/j$e;->a(Ljava/nio/ByteBuffer;)V

    const-string v0, "sendHello"

    invoke-static {v0}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 2

    iget-object v0, p0, Lb/a/a/j;->c:Lb/a/a/j$c;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x2

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lb/a/a/j;->a(SI)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lb/a/a/j;->i:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lb/a/a/j;->e:Lb/a/a/j$e;

    invoke-virtual {p1, v0}, Lb/a/a/j$e;->a(Ljava/nio/ByteBuffer;)V

    const-string p1, "sendFrameUpdate"

    invoke-static {p1}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    iget-object p1, p0, Lb/a/a/j;->l:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget v0, p0, Lb/a/a/j;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/a/a/j;->i:I

    :goto_0
    iget v0, p0, Lb/a/a/j;->i:I

    iget v1, p0, Lb/a/a/j;->j:I

    sub-int/2addr v0, v1

    iget v1, p0, Lb/a/a/j;->h:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lb/a/a/j;->l:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :cond_1
    const-string v0, "sendFrameUpdate over"

    invoke-static {v0}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    iget v0, p0, Lb/a/a/j;->k:I

    monitor-exit p1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public a(Ljava/net/InetAddress;I)I
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/a/j;->f:Z

    new-instance v0, Lb/a/a/j$f;

    invoke-direct {v0, p0, p1, p2}, Lb/a/a/j$f;-><init>(Lb/a/a/j;Ljava/net/InetAddress;I)V

    invoke-virtual {v0}, Lb/a/a/j$f;->c()I

    move-result p1

    invoke-direct {p0, v0}, Lb/a/a/j;->a(Lb/a/a/j$c;)V

    return p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/a/a/j;->f:Z

    new-instance v0, Lb/a/a/j$a;

    invoke-direct {v0, p0, p1}, Lb/a/a/j$a;-><init>(Lb/a/a/j;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lb/a/a/j;->a(Lb/a/a/j$c;)V

    return-void
.end method

.method public a([B)V
    .locals 3

    invoke-direct {p0}, Lb/a/a/j;->f()V

    iget-object v0, p0, Lb/a/a/j;->e:Lb/a/a/j$e;

    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lb/a/a/j;->a(SI)Ljava/nio/ByteBuffer;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/a/j$e;->a(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lb/a/a/j;->e:Lb/a/a/j$e;

    invoke-virtual {v0, p1}, Lb/a/a/j$e;->a([B)V

    const-string p1, "sendSavedState"

    invoke-static {p1}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/a/j;->f:Z

    new-instance v0, Lb/a/a/j$b;

    invoke-direct {v0, p0}, Lb/a/a/j$b;-><init>(Lb/a/a/j;)V

    invoke-direct {p0, v0}, Lb/a/a/j;->a(Lb/a/a/j$c;)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lb/a/a/j;->c:Lb/a/a/j$c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "disconnect"

    invoke-static {v0}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lb/a/a/j;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lb/a/a/j;->i:I

    iput v1, p0, Lb/a/a/j;->j:I

    iget-object v1, p0, Lb/a/a/j;->l:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lb/a/a/j;->c:Lb/a/a/j$c;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lb/a/a/j;->c:Lb/a/a/j$c;

    invoke-virtual {v0}, Lb/a/a/j$c;->a()V

    :try_start_1
    iget-object v0, p0, Lb/a/a/j;->c:Lb/a/a/j$c;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/a/j;->c:Lb/a/a/j$c;

    iput-object v0, p0, Lb/a/a/j;->e:Lb/a/a/j$e;

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lb/a/a/j;->f:Z

    return v0
.end method

.method public declared-synchronized e()V
    .locals 1

    monitor-enter p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v0, p0, Lb/a/a/j;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/a/a/j;->g:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    const-string v0, "sendMessageReply"

    invoke-static {v0}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
