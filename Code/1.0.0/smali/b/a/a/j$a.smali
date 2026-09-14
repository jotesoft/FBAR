.class Lb/a/a/j$a;
.super Lb/a/a/j$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private b:Landroid/bluetooth/BluetoothAdapter;

.field private c:Landroid/bluetooth/BluetoothSocket;

.field final synthetic d:Lb/a/a/j;


# direct methods
.method public constructor <init>(Lb/a/a/j;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lb/a/a/j$a;->d:Lb/a/a/j;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lb/a/a/j$c;-><init>(Lb/a/a/j;Lb/a/a/i;)V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lb/a/a/j$a;->b:Landroid/bluetooth/BluetoothAdapter;

    iget-object p1, p0, Lb/a/a/j$a;->b:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-static {}, Lb/a/a/j;->a()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object p1

    iput-object p1, p0, Lb/a/a/j$a;->c:Landroid/bluetooth/BluetoothSocket;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lb/a/a/j$a;->c:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected b()V
    .locals 3

    iget-object v0, p0, Lb/a/a/j$a;->b:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    iget-object v0, p0, Lb/a/a/j$a;->c:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V

    iget-object v0, p0, Lb/a/a/j$a;->d:Lb/a/a/j;

    iget-object v1, p0, Lb/a/a/j$a;->c:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lb/a/a/j$a;->c:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lb/a/a/j;->a(Lb/a/a/j;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method
