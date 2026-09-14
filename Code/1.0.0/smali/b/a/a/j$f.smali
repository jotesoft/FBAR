.class Lb/a/a/j$f;
.super Lb/a/a/j$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field private b:Ljava/net/ServerSocket;

.field private c:Ljava/net/Socket;

.field final synthetic d:Lb/a/a/j;


# direct methods
.method public constructor <init>(Lb/a/a/j;Ljava/net/InetAddress;I)V
    .locals 1

    iput-object p1, p0, Lb/a/a/j$f;->d:Lb/a/a/j;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lb/a/a/j$c;-><init>(Lb/a/a/j;Lb/a/a/i;)V

    const/4 p1, 0x1

    :try_start_0
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p3, p1, p2}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v0, p0, Lb/a/a/j$f;->b:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz p3, :cond_1

    :goto_0
    iget-object p3, p0, Lb/a/a/j$f;->b:Ljava/net/ServerSocket;

    if-nez p3, :cond_0

    new-instance p3, Ljava/net/ServerSocket;

    const/4 v0, 0x0

    invoke-direct {p3, v0, p1, p2}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object p3, p0, Lb/a/a/j$f;->b:Ljava/net/ServerSocket;

    :cond_0
    return-void

    :cond_1
    throw v0
.end method


# virtual methods
.method public a()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lb/a/a/j$f;->b:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    iget-object v0, p0, Lb/a/a/j$f;->c:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/j$f;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    return-void
.end method

.method protected b()V
    .locals 3

    iget-object v0, p0, Lb/a/a/j$f;->b:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/j$f;->c:Ljava/net/Socket;

    iget-object v0, p0, Lb/a/a/j$f;->b:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    iget-object v0, p0, Lb/a/a/j$f;->d:Lb/a/a/j;

    iget-object v1, p0, Lb/a/a/j$f;->c:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lb/a/a/j$f;->c:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lb/a/a/j;->a(Lb/a/a/j;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lb/a/a/j$f;->b:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    return v0
.end method
