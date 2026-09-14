.class public Landroid/arch/lifecycle/p;
.super Landroid/app/Fragment;
.source ""


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/p$a;
    }
.end annotation


# instance fields
.field private a:Landroid/arch/lifecycle/p$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "android.arch.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Landroid/arch/lifecycle/p;

    invoke-direct {v2}, Landroid/arch/lifecycle/p;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_0
    return-void
.end method

.method private a(Landroid/arch/lifecycle/d$a;)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v1, v0, Landroid/arch/lifecycle/i;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/arch/lifecycle/i;

    invoke-interface {v0}, Landroid/arch/lifecycle/i;->getLifecycle()Landroid/arch/lifecycle/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/h;->b(Landroid/arch/lifecycle/d$a;)V

    return-void

    :cond_0
    instance-of v1, v0, Landroid/arch/lifecycle/f;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/arch/lifecycle/f;

    invoke-interface {v0}, Landroid/arch/lifecycle/f;->getLifecycle()Landroid/arch/lifecycle/d;

    move-result-object v0

    instance-of v1, v0, Landroid/arch/lifecycle/h;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/arch/lifecycle/h;

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/h;->b(Landroid/arch/lifecycle/d$a;)V

    :cond_1
    return-void
.end method

.method private a(Landroid/arch/lifecycle/p$a;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/arch/lifecycle/p$a;->onCreate()V

    :cond_0
    return-void
.end method

.method private b(Landroid/arch/lifecycle/p$a;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/arch/lifecycle/p$a;->a()V

    :cond_0
    return-void
.end method

.method private c(Landroid/arch/lifecycle/p$a;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/arch/lifecycle/p$a;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object p1, p0, Landroid/arch/lifecycle/p;->a:Landroid/arch/lifecycle/p$a;

    invoke-direct {p0, p1}, Landroid/arch/lifecycle/p;->a(Landroid/arch/lifecycle/p$a;)V

    sget-object p1, Landroid/arch/lifecycle/d$a;->ON_CREATE:Landroid/arch/lifecycle/d$a;

    invoke-direct {p0, p1}, Landroid/arch/lifecycle/p;->a(Landroid/arch/lifecycle/d$a;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    sget-object v0, Landroid/arch/lifecycle/d$a;->ON_DESTROY:Landroid/arch/lifecycle/d$a;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/p;->a(Landroid/arch/lifecycle/d$a;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/arch/lifecycle/p;->a:Landroid/arch/lifecycle/p$a;

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    sget-object v0, Landroid/arch/lifecycle/d$a;->ON_PAUSE:Landroid/arch/lifecycle/d$a;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/p;->a(Landroid/arch/lifecycle/d$a;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Landroid/arch/lifecycle/p;->a:Landroid/arch/lifecycle/p$a;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/p;->b(Landroid/arch/lifecycle/p$a;)V

    sget-object v0, Landroid/arch/lifecycle/d$a;->ON_RESUME:Landroid/arch/lifecycle/d$a;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/p;->a(Landroid/arch/lifecycle/d$a;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    iget-object v0, p0, Landroid/arch/lifecycle/p;->a:Landroid/arch/lifecycle/p$a;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/p;->c(Landroid/arch/lifecycle/p$a;)V

    sget-object v0, Landroid/arch/lifecycle/d$a;->ON_START:Landroid/arch/lifecycle/d$a;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/p;->a(Landroid/arch/lifecycle/d$a;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    sget-object v0, Landroid/arch/lifecycle/d$a;->ON_STOP:Landroid/arch/lifecycle/d$a;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/p;->a(Landroid/arch/lifecycle/d$a;)V

    return-void
.end method
