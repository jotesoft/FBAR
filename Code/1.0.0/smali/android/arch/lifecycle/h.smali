.class public Landroid/arch/lifecycle/h;
.super Landroid/arch/lifecycle/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/h$a;
    }
.end annotation


# instance fields
.field private a:La/a/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/a/b/a<",
            "Landroid/arch/lifecycle/e;",
            "Landroid/arch/lifecycle/h$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/arch/lifecycle/d$b;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/arch/lifecycle/f;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/arch/lifecycle/d$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/arch/lifecycle/f;)V
    .locals 1
    .param p1    # Landroid/arch/lifecycle/f;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Landroid/arch/lifecycle/d;-><init>()V

    new-instance v0, La/a/a/b/a;

    invoke-direct {v0}, La/a/a/b/a;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/h;->a:La/a/a/b/a;

    const/4 v0, 0x0

    iput v0, p0, Landroid/arch/lifecycle/h;->d:I

    iput-boolean v0, p0, Landroid/arch/lifecycle/h;->e:Z

    iput-boolean v0, p0, Landroid/arch/lifecycle/h;->f:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/h;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/arch/lifecycle/h;->c:Ljava/lang/ref/WeakReference;

    sget-object p1, Landroid/arch/lifecycle/d$b;->b:Landroid/arch/lifecycle/d$b;

    iput-object p1, p0, Landroid/arch/lifecycle/h;->b:Landroid/arch/lifecycle/d$b;

    return-void
.end method

.method static a(Landroid/arch/lifecycle/d$a;)Landroid/arch/lifecycle/d$b;
    .locals 3

    sget-object v0, Landroid/arch/lifecycle/g;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected event value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object p0, Landroid/arch/lifecycle/d$b;->a:Landroid/arch/lifecycle/d$b;

    return-object p0

    :pswitch_1
    sget-object p0, Landroid/arch/lifecycle/d$b;->e:Landroid/arch/lifecycle/d$b;

    return-object p0

    :pswitch_2
    sget-object p0, Landroid/arch/lifecycle/d$b;->d:Landroid/arch/lifecycle/d$b;

    return-object p0

    :pswitch_3
    sget-object p0, Landroid/arch/lifecycle/d$b;->c:Landroid/arch/lifecycle/d$b;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static a(Landroid/arch/lifecycle/d$b;Landroid/arch/lifecycle/d$b;)Landroid/arch/lifecycle/d$b;
    .locals 1
    .param p0    # Landroid/arch/lifecycle/d$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/arch/lifecycle/d$b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    move-object p0, p1

    :cond_0
    return-object p0
.end method

.method private a(Landroid/arch/lifecycle/f;)V
    .locals 5

    iget-object v0, p0, Landroid/arch/lifecycle/h;->a:La/a/a/b/a;

    invoke-virtual {v0}, La/a/a/b/c;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/arch/lifecycle/h;->f:Z

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/h$a;

    :goto_0
    iget-object v3, v2, Landroid/arch/lifecycle/h$a;->a:Landroid/arch/lifecycle/d$b;

    iget-object v4, p0, Landroid/arch/lifecycle/h;->b:Landroid/arch/lifecycle/d$b;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-lez v3, :cond_0

    iget-boolean v3, p0, Landroid/arch/lifecycle/h;->f:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/arch/lifecycle/h;->a:La/a/a/b/a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, La/a/a/b/a;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/arch/lifecycle/h$a;->a:Landroid/arch/lifecycle/d$b;

    invoke-static {v3}, Landroid/arch/lifecycle/h;->b(Landroid/arch/lifecycle/d$b;)Landroid/arch/lifecycle/d$a;

    move-result-object v3

    invoke-static {v3}, Landroid/arch/lifecycle/h;->a(Landroid/arch/lifecycle/d$a;)Landroid/arch/lifecycle/d$b;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/arch/lifecycle/h;->d(Landroid/arch/lifecycle/d$b;)V

    invoke-virtual {v2, p1, v3}, Landroid/arch/lifecycle/h$a;->a(Landroid/arch/lifecycle/f;Landroid/arch/lifecycle/d$a;)V

    invoke-direct {p0}, Landroid/arch/lifecycle/h;->c()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static b(Landroid/arch/lifecycle/d$b;)Landroid/arch/lifecycle/d$a;
    .locals 3

    sget-object v0, Landroid/arch/lifecycle/g;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Landroid/arch/lifecycle/d$a;->ON_PAUSE:Landroid/arch/lifecycle/d$a;

    return-object p0

    :cond_2
    sget-object p0, Landroid/arch/lifecycle/d$a;->ON_STOP:Landroid/arch/lifecycle/d$a;

    return-object p0

    :cond_3
    sget-object p0, Landroid/arch/lifecycle/d$a;->ON_DESTROY:Landroid/arch/lifecycle/d$a;

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private b(Landroid/arch/lifecycle/f;)V
    .locals 5

    iget-object v0, p0, Landroid/arch/lifecycle/h;->a:La/a/a/b/a;

    invoke-virtual {v0}, La/a/a/b/c;->b()La/a/a/b/c$d;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/arch/lifecycle/h;->f:Z

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/h$a;

    :goto_0
    iget-object v3, v2, Landroid/arch/lifecycle/h$a;->a:Landroid/arch/lifecycle/d$b;

    iget-object v4, p0, Landroid/arch/lifecycle/h;->b:Landroid/arch/lifecycle/d$b;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_0

    iget-boolean v3, p0, Landroid/arch/lifecycle/h;->f:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/arch/lifecycle/h;->a:La/a/a/b/a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, La/a/a/b/a;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/arch/lifecycle/h$a;->a:Landroid/arch/lifecycle/d$b;

    invoke-direct {p0, v3}, Landroid/arch/lifecycle/h;->d(Landroid/arch/lifecycle/d$b;)V

    iget-object v3, v2, Landroid/arch/lifecycle/h$a;->a:Landroid/arch/lifecycle/d$b;

    invoke-static {v3}, Landroid/arch/lifecycle/h;->e(Landroid/arch/lifecycle/d$b;)Landroid/arch/lifecycle/d$a;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/arch/lifecycle/h$a;->a(Landroid/arch/lifecycle/f;Landroid/arch/lifecycle/d$a;)V

    invoke-direct {p0}, Landroid/arch/lifecycle/h;->c()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b()Z
    .locals 3

    iget-object v0, p0, Landroid/arch/lifecycle/h;->a:La/a/a/b/a;

    invoke-virtual {v0}, La/a/a/b/c;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/arch/lifecycle/h;->a:La/a/a/b/a;

    invoke-virtual {v0}, La/a/a/b/c;->a()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/h$a;

    iget-object v0, v0, Landroid/arch/lifecycle/h$a;->a:Landroid/arch/lifecycle/d$b;

    iget-object v2, p0, Landroid/arch/lifecycle/h;->a:La/a/a/b/a;

    invoke-virtual {v2}, La/a/a/b/c;->c()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/h$a;

    iget-object v2, v2, Landroid/arch/lifecycle/h$a;->a:Landroid/arch/lifecycle/d$b;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroid/arch/lifecycle/h;->b:Landroid/arch/lifecycle/d$b;

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private c(Landroid/arch/lifecycle/e;)Landroid/arch/lifecycle/d$b;
    .locals 2

    iget-object v0, p0, Landroid/arch/lifecycle/h;->a:La/a/a/b/a;

    invoke-virtual {v0, p1}, La/a/a/b/a;->b(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/arch/lifecycle/h$a;

    iget-object p1, p1, Landroid/arch/lifecycle/h$a;->a:Landroid/arch/lifecycle/d$b;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iget-object v1, p0, Landroid/arch/lifecycle/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Landroid/arch/lifecycle/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/d$b;

    :cond_1
    iget-object v1, p0, Landroid/arch/lifecycle/h;->b:Landroid/arch/lifecycle/d$b;

    invoke-static {v1, p1}, Landroid/arch/lifecycle/h;->a(Landroid/arch/lifecycle/d$b;Landroid/arch/lifecycle/d$b;)Landroid/arch/lifecycle/d$b;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/arch/lifecycle/h;->a(Landroid/arch/lifecycle/d$b;Landroid/arch/lifecycle/d$b;)Landroid/arch/lifecycle/d$b;

    move-result-object p1

    return-object p1
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Landroid/arch/lifecycle/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private c(Landroid/arch/lifecycle/d$b;)V
    .locals 1

    iget-object v0, p0, Landroid/arch/lifecycle/h;->b:Landroid/arch/lifecycle/d$b;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroid/arch/lifecycle/h;->b:Landroid/arch/lifecycle/d$b;

    iget-boolean p1, p0, Landroid/arch/lifecycle/h;->e:Z

    const/4 v0, 0x1

    if-nez p1, :cond_2

    iget p1, p0, Landroid/arch/lifecycle/h;->d:I

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Landroid/arch/lifecycle/h;->e:Z

    invoke-direct {p0}, Landroid/arch/lifecycle/h;->d()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/arch/lifecycle/h;->e:Z

    return-void

    :cond_2
    :goto_0
    iput-boolean v0, p0, Landroid/arch/lifecycle/h;->f:Z

    return-void
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Landroid/arch/lifecycle/h;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/f;

    if-nez v0, :cond_0

    const-string v0, "LifecycleRegistry"

    const-string v1, "LifecycleOwner is garbage collected, you shouldn\'t try dispatch new events from it."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/arch/lifecycle/h;->b()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iput-boolean v2, p0, Landroid/arch/lifecycle/h;->f:Z

    iget-object v1, p0, Landroid/arch/lifecycle/h;->b:Landroid/arch/lifecycle/d$b;

    iget-object v2, p0, Landroid/arch/lifecycle/h;->a:La/a/a/b/a;

    invoke-virtual {v2}, La/a/a/b/c;->a()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/h$a;

    iget-object v2, v2, Landroid/arch/lifecycle/h$a;->a:Landroid/arch/lifecycle/d$b;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_1

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/h;->a(Landroid/arch/lifecycle/f;)V

    :cond_1
    iget-object v1, p0, Landroid/arch/lifecycle/h;->a:La/a/a/b/a;

    invoke-virtual {v1}, La/a/a/b/c;->c()Ljava/util/Map$Entry;

    move-result-object v1

    iget-boolean v2, p0, Landroid/arch/lifecycle/h;->f:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/arch/lifecycle/h;->b:Landroid/arch/lifecycle/d$b;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/h$a;

    iget-object v1, v1, Landroid/arch/lifecycle/h$a;->a:Landroid/arch/lifecycle/d$b;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/h;->b(Landroid/arch/lifecycle/f;)V

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Landroid/arch/lifecycle/h;->f:Z

    return-void
.end method

.method private d(Landroid/arch/lifecycle/d$b;)V
    .locals 1

    iget-object v0, p0, Landroid/arch/lifecycle/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static e(Landroid/arch/lifecycle/d$b;)Landroid/arch/lifecycle/d$a;
    .locals 3

    sget-object v0, Landroid/arch/lifecycle/g;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2
    sget-object p0, Landroid/arch/lifecycle/d$a;->ON_RESUME:Landroid/arch/lifecycle/d$a;

    return-object p0

    :cond_3
    sget-object p0, Landroid/arch/lifecycle/d$a;->ON_START:Landroid/arch/lifecycle/d$a;

    return-object p0

    :cond_4
    :goto_0
    sget-object p0, Landroid/arch/lifecycle/d$a;->ON_CREATE:Landroid/arch/lifecycle/d$a;

    return-object p0
.end method


# virtual methods
.method public a()Landroid/arch/lifecycle/d$b;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroid/arch/lifecycle/h;->b:Landroid/arch/lifecycle/d$b;

    return-object v0
.end method

.method public a(Landroid/arch/lifecycle/d$b;)V
    .locals 0
    .param p1    # Landroid/arch/lifecycle/d$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-direct {p0, p1}, Landroid/arch/lifecycle/h;->c(Landroid/arch/lifecycle/d$b;)V

    return-void
.end method

.method public a(Landroid/arch/lifecycle/e;)V
    .locals 6
    .param p1    # Landroid/arch/lifecycle/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroid/arch/lifecycle/h;->b:Landroid/arch/lifecycle/d$b;

    sget-object v1, Landroid/arch/lifecycle/d$b;->a:Landroid/arch/lifecycle/d$b;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/arch/lifecycle/d$b;->b:Landroid/arch/lifecycle/d$b;

    :goto_0
    new-instance v0, Landroid/arch/lifecycle/h$a;

    invoke-direct {v0, p1, v1}, Landroid/arch/lifecycle/h$a;-><init>(Landroid/arch/lifecycle/e;Landroid/arch/lifecycle/d$b;)V

    iget-object v1, p0, Landroid/arch/lifecycle/h;->a:La/a/a/b/a;

    invoke-virtual {v1, p1, v0}, La/a/a/b/a;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/h$a;

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Landroid/arch/lifecycle/h;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/f;

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget v2, p0, Landroid/arch/lifecycle/h;->d:I

    const/4 v3, 0x1

    if-nez v2, :cond_4

    iget-boolean v2, p0, Landroid/arch/lifecycle/h;->e:Z

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v2, 0x1

    :goto_2
    invoke-direct {p0, p1}, Landroid/arch/lifecycle/h;->c(Landroid/arch/lifecycle/e;)Landroid/arch/lifecycle/d$b;

    move-result-object v4

    iget v5, p0, Landroid/arch/lifecycle/h;->d:I

    add-int/2addr v5, v3

    iput v5, p0, Landroid/arch/lifecycle/h;->d:I

    :goto_3
    iget-object v5, v0, Landroid/arch/lifecycle/h$a;->a:Landroid/arch/lifecycle/d$b;

    invoke-virtual {v5, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-gez v4, :cond_5

    iget-object v4, p0, Landroid/arch/lifecycle/h;->a:La/a/a/b/a;

    invoke-virtual {v4, p1}, La/a/a/b/a;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v0, Landroid/arch/lifecycle/h$a;->a:Landroid/arch/lifecycle/d$b;

    invoke-direct {p0, v4}, Landroid/arch/lifecycle/h;->d(Landroid/arch/lifecycle/d$b;)V

    iget-object v4, v0, Landroid/arch/lifecycle/h$a;->a:Landroid/arch/lifecycle/d$b;

    invoke-static {v4}, Landroid/arch/lifecycle/h;->e(Landroid/arch/lifecycle/d$b;)Landroid/arch/lifecycle/d$a;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/arch/lifecycle/h$a;->a(Landroid/arch/lifecycle/f;Landroid/arch/lifecycle/d$a;)V

    invoke-direct {p0}, Landroid/arch/lifecycle/h;->c()V

    invoke-direct {p0, p1}, Landroid/arch/lifecycle/h;->c(Landroid/arch/lifecycle/e;)Landroid/arch/lifecycle/d$b;

    move-result-object v4

    goto :goto_3

    :cond_5
    if-nez v2, :cond_6

    invoke-direct {p0}, Landroid/arch/lifecycle/h;->d()V

    :cond_6
    iget p1, p0, Landroid/arch/lifecycle/h;->d:I

    sub-int/2addr p1, v3

    iput p1, p0, Landroid/arch/lifecycle/h;->d:I

    return-void
.end method

.method public b(Landroid/arch/lifecycle/d$a;)V
    .locals 0
    .param p1    # Landroid/arch/lifecycle/d$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/arch/lifecycle/h;->a(Landroid/arch/lifecycle/d$a;)Landroid/arch/lifecycle/d$b;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/arch/lifecycle/h;->c(Landroid/arch/lifecycle/d$b;)V

    return-void
.end method

.method public b(Landroid/arch/lifecycle/e;)V
    .locals 1
    .param p1    # Landroid/arch/lifecycle/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroid/arch/lifecycle/h;->a:La/a/a/b/a;

    invoke-virtual {v0, p1}, La/a/a/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
