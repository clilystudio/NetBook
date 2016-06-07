.class Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;
.super Lcom/mob/tools/gui/u;
.source "SourceFile"


# instance fields
.field private callback:Landroid/view/View$OnClickListener;

.field private girds:[Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;

.field private lines:I

.field private logos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private platformGridView:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;


# direct methods
.method public constructor <init>(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 263
    invoke-direct {p0}, Lcom/mob/tools/gui/u;-><init>()V

    .line 264
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->platformGridView:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    .line 265
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->logos:Ljava/util/List;

    .line 266
    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->platformList:[Lcn/sharesdk/framework/Platform;
    invoke-static {p1}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->access$000(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)[Lcn/sharesdk/framework/Platform;

    move-result-object v1

    .line 267
    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->hiddenPlatforms:Ljava/util/HashMap;
    invoke-static {p1}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->access$100(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)Ljava/util/HashMap;

    move-result-object v3

    .line 268
    if-eqz v1, :cond_3

    .line 269
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 270
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 271
    array-length v5, v1

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v6, v1, v2

    .line 272
    invoke-virtual {v6}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 275
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 278
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [Lcn/sharesdk/framework/Platform;

    move v1, v0

    .line 279
    :goto_1
    array-length v0, v2

    if-ge v1, v0, :cond_2

    .line 280
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/framework/Platform;

    aput-object v0, v2, v1

    .line 279
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 284
    :goto_2
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->logos:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 286
    :cond_3
    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->customers:Ljava/util/ArrayList;
    invoke-static {p1}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->access$200(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)Ljava/util/ArrayList;

    move-result-object v0

    .line 287
    if-eqz v0, :cond_4

    .line 288
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->logos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 290
    :cond_4
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->callback:Landroid/view/View$OnClickListener;

    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->girds:[Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;

    .line 293
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->logos:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 294
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->logos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 295
    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->PAGE_SIZE:I
    invoke-static {p1}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->access$300(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)I

    move-result v2

    .line 296
    div-int v0, v1, v2

    .line 297
    rem-int/2addr v1, v2

    if-lez v1, :cond_5

    .line 298
    add-int/lit8 v0, v0, 0x1

    .line 300
    :cond_5
    new-array v0, v0, [Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->girds:[Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;

    .line 302
    :cond_6
    return-void

    :cond_7
    move-object v0, v1

    goto :goto_2
.end method

.method static synthetic access$800(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;)Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->platformGridView:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    return-object v0
.end method

.method static synthetic access$900(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->callback:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->girds:[Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->girds:[Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;

    array-length v0, v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 309
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->girds:[Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;

    aget-object v0, v0, p1

    if-nez v0, :cond_4

    .line 310
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->platformGridView:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->PAGE_SIZE:I
    invoke-static {v0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->access$300(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)I

    move-result v0

    .line 311
    mul-int v3, v0, p1

    .line 312
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->logos:Ljava/util/List;

    if-nez v2, :cond_1

    move v2, v1

    .line 313
    :goto_0
    add-int v4, v3, v0

    if-le v4, v2, :cond_0

    .line 314
    sub-int v0, v2, v3

    .line 316
    :cond_0
    new-array v2, v0, [Ljava/lang/Object;

    .line 317
    :goto_1
    if-ge v1, v0, :cond_2

    .line 318
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->logos:Ljava/util/List;

    add-int v5, v3, v1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v1

    .line 317
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 312
    :cond_1
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->logos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    .line 321
    :cond_2
    if-nez p1, :cond_3

    .line 322
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->platformGridView:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->COLUMN_PER_LINE:I
    invoke-static {v0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->access$400(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)I

    move-result v0

    .line 323
    array-length v1, v2

    div-int/2addr v1, v0

    iput v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->lines:I

    .line 324
    array-length v1, v2

    rem-int v0, v1, v0

    if-lez v0, :cond_3

    .line 325
    iget v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->lines:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->lines:I

    .line 328
    :cond_3
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->girds:[Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;

    new-instance v1, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;

    invoke-direct {v1, p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;)V

    aput-object v1, v0, p1

    .line 329
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->girds:[Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;

    aget-object v0, v0, p1

    iget v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->lines:I

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->setData(I[Ljava/lang/Object;)V

    .line 332
    :cond_4
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->girds:[Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public onScreenChange(II)V
    .locals 4

    .prologue
    .line 337
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->platformGridView:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->points:[Landroid/widget/ImageView;
    invoke-static {v0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->access$500(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)[Landroid/widget/ImageView;

    move-result-object v1

    .line 338
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 339
    aget-object v2, v1, v0

    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->platformGridView:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->grayPoint:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->access$600(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 342
    :cond_0
    aget-object v0, v1, p1

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->platformGridView:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->bluePoint:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->access$700(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 343
    return-void
.end method
