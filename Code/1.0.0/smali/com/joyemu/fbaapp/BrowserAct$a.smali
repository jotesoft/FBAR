.class Lcom/joyemu/fbaapp/BrowserAct$a;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/joyemu/fbaapp/BrowserAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field final synthetic c:Lcom/joyemu/fbaapp/BrowserAct;


# direct methods
.method constructor <init>(Lcom/joyemu/fbaapp/BrowserAct;)V
    .locals 0

    iput-object p1, p0, Lcom/joyemu/fbaapp/BrowserAct$a;->c:Lcom/joyemu/fbaapp/BrowserAct;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/joyemu/fbaapp/BrowserAct$a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_0
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/joyemu/fbaapp/BrowserAct$a;->b:Ljava/lang/String;

    new-instance p1, Ljava/net/URL;

    iget-object v0, p0, Lcom/joyemu/fbaapp/BrowserAct$a;->b:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadTask:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const-string v0, "User-Agent"

    const-string v1, "Mozilla/4.0 (compatible; MSIE 5.0; Windows NT; DigExt)"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xfa0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v0, "GET"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v0, "Charset"

    const-string v1, "utf-8"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/joyemu/fbaapp/BrowserAct$a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    :catch_1
    :goto_0
    iget-object p1, p0, Lcom/joyemu/fbaapp/BrowserAct$a;->a:Ljava/lang/String;

    return-object p1
.end method

.method protected a(Ljava/lang/String;)V
    .locals 4

    iget-object p1, p0, Lcom/joyemu/fbaapp/BrowserAct$a;->a:Ljava/lang/String;

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "download filename:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/joyemu/fbaapp/BrowserAct$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/joyemu/fbaapp/f;->g(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/joyemu/fbaapp/BrowserAct$a;->a:Ljava/lang/String;

    const-string v0, ".zip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/joyemu/fbaapp/BrowserAct$a;->c:Lcom/joyemu/fbaapp/BrowserAct;

    iget-object v0, p0, Lcom/joyemu/fbaapp/BrowserAct$a;->b:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/joyemu/fbaapp/BrowserAct$a;->a:Ljava/lang/String;

    const-string v3, "fba"

    invoke-static {p1, v0, v3, v1, v2}, Lb/a/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)J

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/joyemu/fbaapp/BrowserAct$a;->a:Ljava/lang/String;

    const-string v0, ".apk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/joyemu/fbaapp/BrowserAct$a;->c:Lcom/joyemu/fbaapp/BrowserAct;

    iget-object v0, p0, Lcom/joyemu/fbaapp/BrowserAct$a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/joyemu/fbaapp/BrowserAct$a;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lb/a/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/joyemu/fbaapp/BrowserAct$a;->c:Lcom/joyemu/fbaapp/BrowserAct;

    iget-object v0, p0, Lcom/joyemu/fbaapp/BrowserAct$a;->b:Ljava/lang/String;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/joyemu/fbaapp/BrowserAct$a;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2, v3}, Lb/a/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)J

    :cond_2
    :goto_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/joyemu/fbaapp/BrowserAct$a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/joyemu/fbaapp/BrowserAct$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
