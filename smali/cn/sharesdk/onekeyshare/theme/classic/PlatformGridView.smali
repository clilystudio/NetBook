.class public Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MIN_CLICK_INTERVAL:I = 0x3e8

.field private static final MSG_PLATFORM_LIST_GOT:I = 0x1


# instance fields
.field private COLUMN_PER_LINE:I

.field private LINE_PER_PAGE:I

.field private PAGE_SIZE:I

.field private bgView:Landroid/view/View;

.field private bluePoint:Landroid/graphics/Bitmap;

.field private customers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/onekeyshare/CustomerLogo;",
            ">;"
        }
    .end annotation
.end field

.field private grayPoint:Landroid/graphics/Bitmap;

.field private hiddenPlatforms:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastClickTime:J

.field private pager:Lcom/mob/tools/gui/ViewPagerClassic;

.field private parent:Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;

.field private platformList:[Lcn/sharesdk/framework/Platform;

.field private points:[Landroid/widget/ImageView;

.field private reqData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private silent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 72
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->init(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->init(Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)[Lcn/sharesdk/framework/Platform;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->platformList:[Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method static synthetic access$002(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;[Lcn/sharesdk/framework/Platform;)[Lcn/sharesdk/framework/Platform;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->platformList:[Lcn/sharesdk/framework/Platform;

    return-object p1
.end method

.method static synthetic access$100(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->hiddenPlatforms:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->customers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->PAGE_SIZE:I

    return v0
.end method

.method static synthetic access$400(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->COLUMN_PER_LINE:I

    return v0
.end method

.method static synthetic access$500(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)[Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->points:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->grayPoint:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$700(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->bluePoint:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private calPageSize()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x3

    .line 106
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1000
    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->l(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 106
    int-to-float v0, v0

    .line 107
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2000
    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->l(Landroid/content/Context;)[I

    move-result-object v1

    aget v1, v1, v7

    .line 107
    int-to-float v1, v1

    .line 108
    div-float/2addr v0, v1

    .line 109
    float-to-double v2, v0

    const-wide v4, 0x3fe428f5c28f5c29L    # 0.63

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    .line 110
    iput v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->COLUMN_PER_LINE:I

    .line 111
    iput v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->LINE_PER_PAGE:I

    .line 127
    :goto_0
    iget v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->COLUMN_PER_LINE:I

    iget v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->LINE_PER_PAGE:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->PAGE_SIZE:I

    .line 128
    return-void

    .line 112
    :cond_0
    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    cmpg-double v1, v2, v4

    if-gez v1, :cond_1

    .line 113
    iput v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->COLUMN_PER_LINE:I

    .line 114
    const/4 v0, 0x2

    iput v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->LINE_PER_PAGE:I

    goto :goto_0

    .line 116
    :cond_1
    iput v7, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->LINE_PER_PAGE:I

    .line 117
    float-to-double v2, v0

    const-wide/high16 v4, 0x3ffc000000000000L    # 1.75

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_2

    .line 118
    const/4 v0, 0x6

    iput v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->COLUMN_PER_LINE:I

    goto :goto_0

    .line 119
    :cond_2
    float-to-double v2, v0

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_3

    .line 120
    const/4 v0, 0x5

    iput v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->COLUMN_PER_LINE:I

    goto :goto_0

    .line 121
    :cond_3
    float-to-double v0, v0

    const-wide v2, 0x3ff4cccccccccccdL    # 1.3

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_4

    .line 122
    const/4 v0, 0x4

    iput v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->COLUMN_PER_LINE:I

    goto :goto_0

    .line 124
    :cond_4
    iput v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->COLUMN_PER_LINE:I

    goto :goto_0
.end method

.method private disableOverScrollMode(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 242
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 253
    :goto_0
    return-void

    .line 246
    :cond_0
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "setOverScrollMode"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 248
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 249
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 81
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->calPageSize()V

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->setOrientation(I)V

    .line 84
    new-instance v0, Lcom/mob/tools/gui/ViewPagerClassic;

    invoke-direct {v0, p1}, Lcom/mob/tools/gui/ViewPagerClassic;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->pager:Lcom/mob/tools/gui/ViewPagerClassic;

    .line 85
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->pager:Lcom/mob/tools/gui/ViewPagerClassic;

    invoke-direct {p0, v0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->disableOverScrollMode(Landroid/view/View;)V

    .line 86
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->pager:Lcom/mob/tools/gui/ViewPagerClassic;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/mob/tools/gui/ViewPagerClassic;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->pager:Lcom/mob/tools/gui/ViewPagerClassic;

    invoke-virtual {p0, v0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->addView(Landroid/view/View;)V

    .line 90
    new-instance v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$1;

    invoke-direct {v0, p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$1;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)V

    .line 102
    invoke-virtual {v0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$1;->start()V

    .line 103
    return-void
.end method


# virtual methods
.method public afterPlatformListGot()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x2

    const/4 v1, 0x0

    .line 142
    new-instance v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;

    invoke-direct {v0, p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)V

    .line 143
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->pager:Lcom/mob/tools/gui/ViewPagerClassic;

    invoke-virtual {v2, v0}, Lcom/mob/tools/gui/ViewPagerClassic;->setAdapter(Lcom/mob/tools/gui/u;)V

    .line 145
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->platformList:[Lcn/sharesdk/framework/Platform;

    if-eqz v0, :cond_9

    .line 146
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->customers:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    move v0, v1

    .line 147
    :goto_0
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->platformList:[Lcn/sharesdk/framework/Platform;

    if-nez v2, :cond_2

    move v2, v1

    .line 148
    :goto_1
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->hiddenPlatforms:Ljava/util/HashMap;

    if-nez v3, :cond_3

    move v3, v1

    .line 149
    :goto_2
    sub-int/2addr v2, v3

    .line 150
    add-int/2addr v2, v0

    .line 151
    iget v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->PAGE_SIZE:I

    div-int v0, v2, v0

    .line 152
    iget v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->PAGE_SIZE:I

    rem-int/2addr v2, v3

    if-lez v2, :cond_0

    .line 153
    add-int/lit8 v0, v0, 0x1

    .line 156
    :cond_0
    :goto_3
    new-array v2, v0, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->points:[Landroid/widget/ImageView;

    .line 157
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->points:[Landroid/widget/ImageView;

    array-length v2, v2

    if-gtz v2, :cond_4

    .line 191
    :goto_4
    return-void

    .line 146
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->customers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 147
    :cond_2
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->platformList:[Lcn/sharesdk/framework/Platform;

    array-length v2, v2

    goto :goto_1

    .line 148
    :cond_3
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->hiddenPlatforms:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    goto :goto_2

    .line 161
    :cond_4
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 162
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 164
    if-le v0, v6, :cond_7

    move v2, v1

    :goto_5
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 165
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 167
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 168
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    invoke-virtual {p0, v4}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->addView(Landroid/view/View;)V

    .line 171
    const/4 v2, 0x5

    invoke-static {v3, v2}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;I)I

    move-result v5

    .line 172
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v6, "light_blue_point"

    invoke-static {v2, v6}, Lcom/arcsoft/hpay100/a/a;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 173
    if-lez v2, :cond_5

    .line 174
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->grayPoint:Landroid/graphics/Bitmap;

    .line 176
    :cond_5
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v6, "blue_point"

    invoke-static {v2, v6}, Lcom/arcsoft/hpay100/a/a;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 177
    if-lez v2, :cond_6

    .line 178
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->bluePoint:Landroid/graphics/Bitmap;

    :cond_6
    move v2, v1

    .line 180
    :goto_6
    if-ge v2, v0, :cond_8

    .line 181
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->points:[Landroid/widget/ImageView;

    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v7, v6, v2

    .line 182
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->points:[Landroid/widget/ImageView;

    aget-object v6, v6, v2

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 183
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->points:[Landroid/widget/ImageView;

    aget-object v6, v6, v2

    iget-object v7, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->grayPoint:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 184
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 185
    invoke-virtual {v6, v5, v5, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 186
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->points:[Landroid/widget/ImageView;

    aget-object v7, v7, v2

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->points:[Landroid/widget/ImageView;

    aget-object v6, v6, v2

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 180
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 164
    :cond_7
    const/16 v2, 0x8

    goto :goto_5

    .line 189
    :cond_8
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->pager:Lcom/mob/tools/gui/ViewPagerClassic;

    invoke-virtual {v0}, Lcom/mob/tools/gui/ViewPagerClassic;->a()I

    move-result v0

    .line 190
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->points:[Landroid/widget/ImageView;

    aget-object v0, v1, v0

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->bluePoint:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_4

    :cond_9
    move v0, v1

    goto/16 :goto_3
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .prologue
    .line 131
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 137
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 133
    :pswitch_0
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->afterPlatformListGot()V

    goto :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 230
    iget-wide v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->lastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 238
    :goto_0
    return-void

    .line 233
    :cond_0
    iput-wide v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->lastClickTime:J

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 236
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->parent:Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;

    invoke-virtual {v1, p1, v0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->onPlatformIconClick(Landroid/view/View;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onConfigurationChanged()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->pager:Lcom/mob/tools/gui/ViewPagerClassic;

    invoke-virtual {v0}, Lcom/mob/tools/gui/ViewPagerClassic;->a()I

    move-result v0

    iget v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->PAGE_SIZE:I

    mul-int/2addr v0, v1

    .line 196
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->calPageSize()V

    .line 197
    iget v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->PAGE_SIZE:I

    div-int/2addr v0, v1

    .line 199
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->removeViewAt(I)V

    .line 200
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->afterPlatformListGot()V

    .line 202
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->pager:Lcom/mob/tools/gui/ViewPagerClassic;

    invoke-virtual {v1, v0}, Lcom/mob/tools/gui/ViewPagerClassic;->setCurrentScreen(I)V

    .line 203
    return-void
.end method

.method public setCustomerLogos(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/onekeyshare/CustomerLogo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->customers:Ljava/util/ArrayList;

    .line 217
    return-void
.end method

.method public setData(Ljava/util/HashMap;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 206
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->reqData:Ljava/util/HashMap;

    .line 207
    iput-boolean p2, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->silent:Z

    .line 208
    return-void
.end method

.method public setEditPageBackground(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->bgView:Landroid/view/View;

    .line 221
    return-void
.end method

.method public setHiddenPlatforms(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->hiddenPlatforms:Ljava/util/HashMap;

    .line 212
    return-void
.end method

.method public setParent(Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->parent:Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;

    .line 226
    return-void
.end method
