.class public Lcom/joyemu/fbaapp/BrowserAct;
.super Landroid/app/Activity;
.source ""

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/joyemu/fbaapp/BrowserAct$a;
    }
.end annotation


# instance fields
.field private a:Landroid/webkit/WebView;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Landroid/os/Handler;

.field e:Landroid/widget/ProgressBar;

.field f:Landroid/widget/ImageView;

.field g:Landroid/widget/ImageView;

.field h:Landroid/widget/ImageView;

.field i:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public a()V
    .locals 0

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/joyemu/fbaapp/BrowserAct;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/joyemu/fbaapp/d;->a()Lcom/joyemu/fbaapp/d;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/joyemu/fbaapp/d;->a(Landroid/app/Activity;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const v0, 0x7f0c001f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const v0, 0x7f0900a1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/joyemu/fbaapp/BrowserAct;->e:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/joyemu/fbaapp/BrowserAct;->e:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "file:///android_asset/about.htm"

    const-string v2, "file:///android_asset/about_en.htm"

    const-string v3, "zh"

    const v4, 0x7f0f0022

    if-eqz v0, :cond_1

    const-string v5, "WEBVIEW_TITLE"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/joyemu/fbaapp/BrowserAct;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/joyemu/fbaapp/BrowserAct;->c:Ljava/lang/String;

    if-nez v5, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/joyemu/fbaapp/BrowserAct;->c:Ljava/lang/String;

    :cond_0
    const-string v4, "WEBVIEW_URL"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/joyemu/fbaapp/BrowserAct;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/joyemu/fbaapp/BrowserAct;->b:Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/joyemu/fbaapp/BrowserAct;->c:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    iput-object v1, p0, Lcom/joyemu/fbaapp/BrowserAct;->b:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iput-object v2, p0, Lcom/joyemu/fbaapp/BrowserAct;->b:Ljava/lang/String;

    :cond_3
    :goto_1
    new-instance v0, Lcom/joyemu/fbaapp/g;

    invoke-direct {v0, p0}, Lcom/joyemu/fbaapp/g;-><init>(Lcom/joyemu/fbaapp/BrowserAct;)V

    iput-object v0, p0, Lcom/joyemu/fbaapp/BrowserAct;->d:Landroid/os/Handler;

    const v0, 0x7f0901c7

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/joyemu/fbaapp/BrowserAct;->a:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/joyemu/fbaapp/BrowserAct;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/joyemu/fbaapp/BrowserAct;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "GBK"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/joyemu/fbaapp/BrowserAct;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    iget-object v0, p0, Lcom/joyemu/fbaapp/BrowserAct;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    iget-object p1, p0, Lcom/joyemu/fbaapp/BrowserAct;->a:Landroid/webkit/WebView;

    new-instance v0, Lcom/joyemu/fbaapp/h;

    invoke-direct {v0, p0}, Lcom/joyemu/fbaapp/h;-><init>(Lcom/joyemu/fbaapp/BrowserAct;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object p1, p0, Lcom/joyemu/fbaapp/BrowserAct;->a:Landroid/webkit/WebView;

    new-instance v0, Lcom/joyemu/fbaapp/i;

    invoke-direct {v0, p0}, Lcom/joyemu/fbaapp/i;-><init>(Lcom/joyemu/fbaapp/BrowserAct;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object p1, p0, Lcom/joyemu/fbaapp/BrowserAct;->a:Landroid/webkit/WebView;

    invoke-virtual {p1, p0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    iget-object p1, p0, Lcom/joyemu/fbaapp/BrowserAct;->a:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/joyemu/fbaapp/BrowserAct;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const p1, 0x7f0901c3

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/joyemu/fbaapp/BrowserAct;->f:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/joyemu/fbaapp/BrowserAct;->f:Landroid/widget/ImageView;

    new-instance v0, Lcom/joyemu/fbaapp/j;

    invoke-direct {v0, p0}, Lcom/joyemu/fbaapp/j;-><init>(Lcom/joyemu/fbaapp/BrowserAct;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0901c5

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/joyemu/fbaapp/BrowserAct;->g:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/joyemu/fbaapp/BrowserAct;->g:Landroid/widget/ImageView;

    new-instance v0, Lcom/joyemu/fbaapp/k;

    invoke-direct {v0, p0}, Lcom/joyemu/fbaapp/k;-><init>(Lcom/joyemu/fbaapp/BrowserAct;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0901c6

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/joyemu/fbaapp/BrowserAct;->h:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/joyemu/fbaapp/BrowserAct;->h:Landroid/widget/ImageView;

    new-instance v0, Lcom/joyemu/fbaapp/l;

    invoke-direct {v0, p0}, Lcom/joyemu/fbaapp/l;-><init>(Lcom/joyemu/fbaapp/BrowserAct;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0901c4

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/joyemu/fbaapp/BrowserAct;->i:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/joyemu/fbaapp/BrowserAct;->i:Landroid/widget/ImageView;

    new-instance v0, Lcom/joyemu/fbaapp/m;

    invoke-direct {v0, p0}, Lcom/joyemu/fbaapp/m;-><init>(Lcom/joyemu/fbaapp/BrowserAct;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/joyemu/fbaapp/BrowserAct;->a()V

    return-void
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    new-instance p2, Lcom/joyemu/fbaapp/n;

    invoke-direct {p2, p0, p1}, Lcom/joyemu/fbaapp/n;-><init>(Lcom/joyemu/fbaapp/BrowserAct;Ljava/lang/String;)V

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p3, 0x7f0f0013

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p3, 0x7f0f0011

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p3, 0x7f0f0014

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f0f0012

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    iget-object v2, p0, Lcom/joyemu/fbaapp/BrowserAct;->a:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/joyemu/fbaapp/BrowserAct;->a:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    return v0

    :cond_0
    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/joyemu/fbaapp/BrowserAct;->a()V

    return-void
.end method
