.class public Lb/a/a/m;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lb/a/a/m;->a:I

    return-void
.end method

.method public static a()Z
    .locals 2

    sget v0, Lb/a/a/m;->a:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    invoke-static {}, Lb/a/a/l;->a()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static b()Z
    .locals 2

    sget v0, Lb/a/a/m;->a:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    invoke-static {}, Lb/a/a/l;->b()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
