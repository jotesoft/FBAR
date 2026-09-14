.class Landroid/arch/lifecycle/h$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Landroid/arch/lifecycle/d$b;

.field b:Landroid/arch/lifecycle/GenericLifecycleObserver;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/e;Landroid/arch/lifecycle/d$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/arch/lifecycle/j;->a(Ljava/lang/Object;)Landroid/arch/lifecycle/GenericLifecycleObserver;

    move-result-object p1

    iput-object p1, p0, Landroid/arch/lifecycle/h$a;->b:Landroid/arch/lifecycle/GenericLifecycleObserver;

    iput-object p2, p0, Landroid/arch/lifecycle/h$a;->a:Landroid/arch/lifecycle/d$b;

    return-void
.end method


# virtual methods
.method a(Landroid/arch/lifecycle/f;Landroid/arch/lifecycle/d$a;)V
    .locals 2

    invoke-static {p2}, Landroid/arch/lifecycle/h;->a(Landroid/arch/lifecycle/d$a;)Landroid/arch/lifecycle/d$b;

    move-result-object v0

    iget-object v1, p0, Landroid/arch/lifecycle/h$a;->a:Landroid/arch/lifecycle/d$b;

    invoke-static {v1, v0}, Landroid/arch/lifecycle/h;->a(Landroid/arch/lifecycle/d$b;Landroid/arch/lifecycle/d$b;)Landroid/arch/lifecycle/d$b;

    move-result-object v1

    iput-object v1, p0, Landroid/arch/lifecycle/h$a;->a:Landroid/arch/lifecycle/d$b;

    iget-object v1, p0, Landroid/arch/lifecycle/h$a;->b:Landroid/arch/lifecycle/GenericLifecycleObserver;

    invoke-interface {v1, p1, p2}, Landroid/arch/lifecycle/GenericLifecycleObserver;->a(Landroid/arch/lifecycle/f;Landroid/arch/lifecycle/d$a;)V

    iput-object v0, p0, Landroid/arch/lifecycle/h$a;->a:Landroid/arch/lifecycle/d$b;

    return-void
.end method
