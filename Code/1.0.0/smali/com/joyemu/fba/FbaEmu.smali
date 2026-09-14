.class public Lcom/joyemu/fba/FbaEmu;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/joyemu/fba/FbaEmu$a;
    }
.end annotation


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I

.field public static g:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "fbawrapper"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput v0, Lcom/joyemu/fba/FbaEmu;->a:I

    sput v0, Lcom/joyemu/fba/FbaEmu;->b:I

    const/4 v1, 0x2

    sput v1, Lcom/joyemu/fba/FbaEmu;->c:I

    const/4 v2, 0x3

    sput v2, Lcom/joyemu/fba/FbaEmu;->d:I

    const/4 v2, 0x0

    sput v2, Lcom/joyemu/fba/FbaEmu;->e:I

    sput v0, Lcom/joyemu/fba/FbaEmu;->f:I

    sput v1, Lcom/joyemu/fba/FbaEmu;->g:I

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/joyemu/fbaapp/f;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".dat"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/joyemu/fba/FbaEmu$a;

    invoke-direct {p0}, Lcom/joyemu/fba/FbaEmu$a;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static native addIpsPatch(Ljava/lang/String;)I
.end method

.method public static native cheatEnable(II)I
.end method

.method public static native coreLoop(I)I
.end method

.method public static native deinit()I
.end method

.method public static native drawBmp(Landroid/graphics/Bitmap;)I
.end method

.method public static native drawGL()I
.end method

.method public static native enableIpsPatch(I)I
.end method

.method public static native getCheatOptionCount(I)I
.end method

.method public static native getCheatOptionName(II)Ljava/lang/String;
.end method

.method public static native getIpsPatchDesc(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getRomInfo(Ljava/lang/String;I)I
.end method

.method public static native getRomText(Ljava/lang/String;II)Ljava/lang/String;
.end method

.method public static native getVideoHeight()I
.end method

.method public static native getVideoWidth()I
.end method

.method public static native init(I)I
.end method

.method public static native ipsInit(I)I
.end method

.method public static native loadRom(Ljava/lang/String;)I
.end method

.method public static native loadState(Ljava/lang/String;)I
.end method

.method public static native saveState(Ljava/lang/String;)I
.end method

.method public static native setControl(II)I
.end method

.method public static native setFilter(II)V
.end method

.method public static native setGLQuality(I)I
.end method

.method public static native setKeyState(II)I
.end method

.method public static native setSoundEnable(I)I
.end method

.method public static native soInit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I
.end method

.method public static native unloadRom()I
.end method
