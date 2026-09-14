.class public Lb/a/a/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static b:I

.field static c:Ljava/text/Collator;

.field static d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lb/a/a/c;->c:Ljava/text/Collator;

    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sput p1, Lb/a/a/c;->b:I

    sput-object p2, Lb/a/a/c;->a:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    new-instance p1, Ljava/util/zip/ZipInputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 p0, 0x1000

    new-array v0, p0, [B

    :goto_0
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v1, p0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    invoke-virtual {v2, v0, v1, v3}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public static a(Ljava/io/File;)[Lb/a/a/d;
    .locals 8

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget v1, Lcom/joyemu/fbaapp/f;->d:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_4

    array-length v0, p0

    new-array v0, v0, [Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v5, p0

    if-ge v1, v5, :cond_2

    sget-object v5, Lb/a/a/c;->d:Landroid/content/Context;

    aget-object v6, p0, v1

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/joyemu/fbaapp/f;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/joyemu/fbaapp/w;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    aput-boolean v4, v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    aput-boolean v3, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-array v1, v2, [Lb/a/a/e;

    const/4 v2, 0x0

    :goto_2
    array-length v4, p0

    if-ge v3, v4, :cond_18

    aget-boolean v4, v0, v3

    if-eqz v4, :cond_3

    new-instance v4, Lb/a/a/e;

    aget-object v5, p0, v3

    invoke-direct {v4, v5}, Lb/a/a/e;-><init>(Ljava/io/File;)V

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x3

    if-ne v1, v2, :cond_a

    array-length v0, p0

    new-array v0, v0, [Z

    sget v1, Lcom/joyemu/fbaapp/f;->e:I

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_3
    array-length v6, p0

    if-ge v2, v6, :cond_8

    aget-object v6, p0, v2

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_4

    :cond_5
    aget-object v6, p0, v2

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/joyemu/fbaapp/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_6

    goto :goto_4

    :cond_6
    sget-object v7, Lcom/joyemu/fbaapp/f;->c:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/joyemu/fbaapp/xa;

    if-eqz v6, :cond_7

    iget v6, v6, Lcom/joyemu/fbaapp/xa;->e:I

    if-ne v6, v1, :cond_7

    aput-boolean v4, v0, v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    aput-boolean v3, v0, v2

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    new-array v1, v5, [Lb/a/a/e;

    const/4 v2, 0x0

    :goto_5
    array-length v4, p0

    if-ge v3, v4, :cond_18

    aget-boolean v4, v0, v3

    if-eqz v4, :cond_9

    new-instance v4, Lb/a/a/e;

    aget-object v5, p0, v3

    invoke-direct {v4, v5}, Lb/a/a/e;-><init>(Ljava/io/File;)V

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v2, 0x4

    if-ne v1, v2, :cond_10

    array-length v0, p0

    new-array v0, v0, [Z

    sget v1, Lcom/joyemu/fbaapp/f;->f:I

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_6
    array-length v6, p0

    if-ge v2, v6, :cond_e

    aget-object v6, p0, v2

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_7

    :cond_b
    aget-object v6, p0, v2

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/joyemu/fbaapp/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_c

    goto :goto_7

    :cond_c
    sget-object v7, Lcom/joyemu/fbaapp/f;->c:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/joyemu/fbaapp/xa;

    if-eqz v6, :cond_d

    iget v6, v6, Lcom/joyemu/fbaapp/xa;->f:I

    if-ne v6, v1, :cond_d

    aput-boolean v4, v0, v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_d
    aput-boolean v3, v0, v2

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_e
    new-array v1, v5, [Lb/a/a/e;

    const/4 v2, 0x0

    :goto_8
    array-length v4, p0

    if-ge v3, v4, :cond_18

    aget-boolean v4, v0, v3

    if-eqz v4, :cond_f

    new-instance v4, Lb/a/a/e;

    aget-object v5, p0, v3

    invoke-direct {v4, v5}, Lb/a/a/e;-><init>(Ljava/io/File;)V

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_10
    if-ne v1, v4, :cond_17

    array-length v1, p0

    new-array v1, v1, [Z

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_9
    array-length v6, p0

    if-ge v2, v6, :cond_14

    aget-object v6, p0, v2

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/joyemu/fbaapp/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aget-object v7, p0, v2

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_11

    if-eqz v6, :cond_11

    sget-object v7, Lcom/joyemu/fbaapp/f;->c:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/joyemu/fbaapp/xa;

    goto :goto_a

    :cond_11
    move-object v6, v0

    :goto_a
    if-nez v6, :cond_12

    aget-object v6, p0, v2

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_13

    :cond_12
    aput-boolean v4, v1, v2

    add-int/lit8 v5, v5, 0x1

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_14
    new-array v0, v5, [Lb/a/a/e;

    const/4 v2, 0x0

    :goto_b
    array-length v4, p0

    if-ge v3, v4, :cond_16

    aget-boolean v4, v1, v3

    if-eqz v4, :cond_15

    new-instance v4, Lb/a/a/e;

    aget-object v5, p0, v3

    invoke-direct {v4, v5}, Lb/a/a/e;-><init>(Ljava/io/File;)V

    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_16
    move-object v1, v0

    goto :goto_d

    :cond_17
    array-length v0, p0

    new-array v1, v0, [Lb/a/a/e;

    :goto_c
    if-ge v3, v0, :cond_18

    new-instance v2, Lb/a/a/e;

    aget-object v4, p0, v3

    invoke-direct {v2, v4}, Lb/a/a/e;-><init>(Ljava/io/File;)V

    aput-object v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_18
    :goto_d
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-object v1
.end method

.method public static a(Ljava/io/File;Z)[Lb/a/a/d;
    .locals 2

    sget v0, Lb/a/a/c;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lb/a/a/c;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-static {p0}, Lb/a/a/c;->a(Ljava/io/File;)[Lb/a/a/d;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lb/a/a/c;->b(Ljava/io/File;)[Lb/a/a/d;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/io/File;)[Lb/a/a/d;
    .locals 8

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget v1, Lcom/joyemu/fbaapp/f;->d:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_4

    array-length v0, p0

    new-array v0, v0, [Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v5, p0

    if-ge v1, v5, :cond_2

    sget-object v5, Lb/a/a/c;->d:Landroid/content/Context;

    aget-object v6, p0, v1

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/joyemu/fbaapp/f;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/joyemu/fbaapp/w;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    aput-boolean v4, v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    aput-boolean v3, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-array v1, v2, [Lb/a/a/d;

    const/4 v2, 0x0

    :goto_2
    array-length v4, p0

    if-ge v3, v4, :cond_18

    aget-boolean v4, v0, v3

    if-eqz v4, :cond_3

    new-instance v4, Lb/a/a/d;

    aget-object v5, p0, v3

    invoke-direct {v4, v5}, Lb/a/a/d;-><init>(Ljava/io/File;)V

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x3

    if-ne v1, v2, :cond_a

    array-length v0, p0

    new-array v0, v0, [Z

    sget v1, Lcom/joyemu/fbaapp/f;->e:I

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_3
    array-length v6, p0

    if-ge v2, v6, :cond_8

    aget-object v6, p0, v2

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_4

    :cond_5
    aget-object v6, p0, v2

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/joyemu/fbaapp/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_6

    goto :goto_4

    :cond_6
    sget-object v7, Lcom/joyemu/fbaapp/f;->c:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/joyemu/fbaapp/xa;

    if-eqz v6, :cond_7

    iget v6, v6, Lcom/joyemu/fbaapp/xa;->e:I

    if-ne v6, v1, :cond_7

    aput-boolean v4, v0, v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    aput-boolean v3, v0, v2

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    new-array v1, v5, [Lb/a/a/d;

    const/4 v2, 0x0

    :goto_5
    array-length v4, p0

    if-ge v3, v4, :cond_18

    aget-boolean v4, v0, v3

    if-eqz v4, :cond_9

    new-instance v4, Lb/a/a/d;

    aget-object v5, p0, v3

    invoke-direct {v4, v5}, Lb/a/a/d;-><init>(Ljava/io/File;)V

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v2, 0x4

    if-ne v1, v2, :cond_10

    array-length v0, p0

    new-array v0, v0, [Z

    sget v1, Lcom/joyemu/fbaapp/f;->f:I

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_6
    array-length v6, p0

    if-ge v2, v6, :cond_e

    aget-object v6, p0, v2

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_7

    :cond_b
    aget-object v6, p0, v2

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/joyemu/fbaapp/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_c

    goto :goto_7

    :cond_c
    sget-object v7, Lcom/joyemu/fbaapp/f;->c:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/joyemu/fbaapp/xa;

    if-eqz v6, :cond_d

    iget v6, v6, Lcom/joyemu/fbaapp/xa;->f:I

    if-ne v6, v1, :cond_d

    aput-boolean v4, v0, v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_d
    aput-boolean v3, v0, v2

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_e
    new-array v1, v5, [Lb/a/a/d;

    const/4 v2, 0x0

    :goto_8
    array-length v4, p0

    if-ge v3, v4, :cond_18

    aget-boolean v4, v0, v3

    if-eqz v4, :cond_f

    new-instance v4, Lb/a/a/d;

    aget-object v5, p0, v3

    invoke-direct {v4, v5}, Lb/a/a/d;-><init>(Ljava/io/File;)V

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_10
    if-ne v1, v4, :cond_17

    array-length v1, p0

    new-array v1, v1, [Z

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_9
    array-length v6, p0

    if-ge v2, v6, :cond_14

    aget-object v6, p0, v2

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/joyemu/fbaapp/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aget-object v7, p0, v2

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_11

    if-eqz v6, :cond_11

    sget-object v7, Lcom/joyemu/fbaapp/f;->c:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/joyemu/fbaapp/xa;

    goto :goto_a

    :cond_11
    move-object v6, v0

    :goto_a
    if-nez v6, :cond_12

    aget-object v6, p0, v2

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_13

    :cond_12
    aput-boolean v4, v1, v2

    add-int/lit8 v5, v5, 0x1

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_14
    new-array v0, v5, [Lb/a/a/d;

    const/4 v2, 0x0

    :goto_b
    array-length v4, p0

    if-ge v3, v4, :cond_16

    aget-boolean v4, v1, v3

    if-eqz v4, :cond_15

    new-instance v4, Lb/a/a/d;

    aget-object v5, p0, v3

    invoke-direct {v4, v5}, Lb/a/a/d;-><init>(Ljava/io/File;)V

    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_16
    move-object v1, v0

    goto :goto_d

    :cond_17
    array-length v0, p0

    new-array v1, v0, [Lb/a/a/d;

    :goto_c
    if-ge v3, v0, :cond_18

    new-instance v2, Lb/a/a/d;

    aget-object v4, p0, v3

    invoke-direct {v2, v4}, Lb/a/a/d;-><init>(Ljava/io/File;)V

    aput-object v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_18
    :goto_d
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-object v1
.end method
