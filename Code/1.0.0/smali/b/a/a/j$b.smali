.class Lb/a/a/j$b;
.super Lb/a/a/j$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private b:Landroid/bluetooth/BluetoothServerSocket;

.field private c:Landroid/bluetooth/BluetoothSocket;

.field final synthetic d:Lb/a/a/j;


# direct methods
.method public constructor <init>(Lb/a/a/j;)V
    .locals 2

    iput-object p1, p0, Lb/a/a/j$b;->d:Lb/a/a/j;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lb/a/a/j$c;-><init>(Lb/a/a/j;Lb/a/a/i;)V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-static {}, Lb/a/a/j;->a()Ljava/util/UUID;

    move-result-object v0

    const-string v1, "Nesoid"

    invoke-virtual {p1, v1, v0}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object p1

    iput-object p1, p0, Lb/a/a/j$b;->b:Landroid/bluetooth/BluetoothServerSocket;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lb/a/a/j$b;->b:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    iget-object v0, p0, Lb/a/a/j$b;->c:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/j$b;->c:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    return-void
.end method

.method protected b()V
    .locals 3

    iget-object v0, p0, Lb/a/a/j$b;->b:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/j$b;->c:Landroid/bluetooth/BluetoothSocket;

    iget-object v0, p0, Lb/a/a/j$b;->b:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->close()V

    iget-object v0, p0, Lb/a/a/j$b;->d:Lb/a/a/j;

    iget-object v1, p0, Lb/a/a/j$b;->c:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lb/a/a/j$b;->c:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lb/a/a/j;->a(Lb/a/a/j;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method
