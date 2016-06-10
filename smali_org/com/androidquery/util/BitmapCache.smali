.class public Lcom/androidquery/util/BitmapCache;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private maxCount:I

.field private maxPixels:I

.field private maxTotalPixels:I

.field private pixels:I


# direct methods
.method public constructor <init>(III)V
    .locals 3

    .prologue
    .line 41
    const/16 v0, 0x8

    const/high16 v1, 0x3f400000

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 43
    iput p1, p0, Lcom/androidquery/util/BitmapCache;->maxCount:I

    .line 44
    iput p2, p0, Lcom/androidquery/util/BitmapCache;->maxPixels:I

    .line 45
    iput p3, p0, Lcom/androidquery/util/BitmapCache;->maxTotalPixels:I

    .line 47
    return-void
.end method

.method private static a(Landroid/graphics/Bitmap;)I
    .locals 2

    .prologue
    .line 93
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 94
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Ljava/util/LinkedHashMap;->clear()V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/androidquery/util/BitmapCache;->pixels:I

    .line 90
    return-void
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 54
    invoke-static {p2}, Lcom/androidquery/util/BitmapCache;->a(Landroid/graphics/Bitmap;)I

    move-result v1

    .line 55
    iget v2, p0, Lcom/androidquery/util/BitmapCache;->maxPixels:I

    if-gt v1, v2, :cond_0

    .line 56
    iget v0, p0, Lcom/androidquery/util/BitmapCache;->pixels:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/androidquery/util/BitmapCache;->pixels:I

    .line 57
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 58
    if-eqz v0, :cond_0

    .line 59
    iget v1, p0, Lcom/androidquery/util/BitmapCache;->pixels:I

    invoke-static {v0}, Lcom/androidquery/util/BitmapCache;->a(Landroid/graphics/Bitmap;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/androidquery/util/BitmapCache;->pixels:I

    .line 69
    :cond_0
    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/androidquery/util/BitmapCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 76
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 77
    if-eqz v0, :cond_0

    .line 78
    iget v1, p0, Lcom/androidquery/util/BitmapCache;->pixels:I

    invoke-static {v0}, Lcom/androidquery/util/BitmapCache;->a(Landroid/graphics/Bitmap;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/androidquery/util/BitmapCache;->pixels:I

    .line 83
    :cond_0
    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/androidquery/util/BitmapCache;->remove(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 122
    iget v0, p0, Lcom/androidquery/util/BitmapCache;->pixels:I

    iget v1, p0, Lcom/androidquery/util/BitmapCache;->maxTotalPixels:I

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/androidquery/util/BitmapCache;->size()I

    move-result v0

    iget v1, p0, Lcom/androidquery/util/BitmapCache;->maxCount:I

    if-le v0, v1, :cond_1

    .line 131
    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androidquery/util/BitmapCache;->remove(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    .line 1099
    :cond_1
    iget v0, p0, Lcom/androidquery/util/BitmapCache;->pixels:I

    iget v1, p0, Lcom/androidquery/util/BitmapCache;->maxTotalPixels:I

    if-le v0, v1, :cond_2

    .line 1101
    invoke-virtual {p0}, Lcom/androidquery/util/BitmapCache;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1103
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 138
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 1105
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1106
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1108
    iget v1, p0, Lcom/androidquery/util/BitmapCache;->pixels:I

    iget v2, p0, Lcom/androidquery/util/BitmapCache;->maxTotalPixels:I

    if-le v1, v2, :cond_2

    goto :goto_0
.end method
