.class public final Lcom/cocosw/bottomsheet/a;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field private a:Landroid/widget/GridView;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cocosw/bottomsheet/h;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/widget/BaseAdapter;

.field private d:Lcom/cocosw/bottomsheet/g;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:F


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x8000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_2

    .line 80
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v2, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lcom/cocosw/bottomsheet/a;->e:Z

    .line 83
    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 84
    const-string v3, "get"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 85
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 86
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "qemu.hw.mainkeys"

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/cocosw/bottomsheet/a;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 93
    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 95
    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/cocosw/bottomsheet/a;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 103
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v7

    if-eqz v1, :cond_1

    .line 104
    iput-boolean v2, p0, Lcom/cocosw/bottomsheet/a;->g:Z

    .line 1115
    :cond_1
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1116
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_3

    .line 1117
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 1122
    :goto_1
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v2

    .line 1123
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float v1, v2, v1

    .line 1124
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 106
    iput v0, p0, Lcom/cocosw/bottomsheet/a;->h:F

    .line 107
    iget-boolean v0, p0, Lcom/cocosw/bottomsheet/a;->g:Z

    if-eqz v0, :cond_2

    .line 1366
    invoke-virtual {p0}, Lcom/cocosw/bottomsheet/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1367
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1370
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x4000000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1374
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1376
    invoke-virtual {v0, v7, v7}, Landroid/view/Window;->setFlags(II)V

    .line 111
    :cond_2
    return-void

    .line 88
    :catch_0
    move-exception v1

    iput-object v8, p0, Lcom/cocosw/bottomsheet/a;->f:Ljava/lang/String;

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 1120
    :cond_3
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_1

    .line 92
    :array_0
    .array-data 4
        0x10103ef
        0x10103f0
    .end array-data
.end method

.method static synthetic a(Lcom/cocosw/bottomsheet/a;)Landroid/widget/GridView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cocosw/bottomsheet/a;->a:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic a(Lcom/cocosw/bottomsheet/a;Lcom/cocosw/bottomsheet/g;)Lcom/cocosw/bottomsheet/g;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/cocosw/bottomsheet/a;->d:Lcom/cocosw/bottomsheet/g;

    return-object p1
.end method

.method static synthetic b(Lcom/cocosw/bottomsheet/a;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cocosw/bottomsheet/a;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/cocosw/bottomsheet/a;)Lcom/cocosw/bottomsheet/g;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cocosw/bottomsheet/a;->d:Lcom/cocosw/bottomsheet/g;

    return-object v0
.end method

.method static synthetic d(Lcom/cocosw/bottomsheet/a;)Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cocosw/bottomsheet/a;->c:Landroid/widget/BaseAdapter;

    return-object v0
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 355
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 356
    invoke-virtual {p0}, Lcom/cocosw/bottomsheet/a;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2187
    invoke-virtual {p0, v1}, Lcom/cocosw/bottomsheet/a;->setCanceledOnTouchOutside(Z)V

    .line 2188
    sget v3, Lcom/cocosw/bottomsheet/R$layout;->bottom_sheet_dialog:I

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2189
    invoke-virtual {p0, v3}, Lcom/cocosw/bottomsheet/a;->setContentView(Landroid/view/View;)V

    .line 2191
    new-instance v0, Lcom/cocosw/bottomsheet/b;

    invoke-direct {v0, p0}, Lcom/cocosw/bottomsheet/b;-><init>(Lcom/cocosw/bottomsheet/a;)V

    invoke-virtual {p0, v0}, Lcom/cocosw/bottomsheet/a;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 2198
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v0, v4, :cond_1

    iget-boolean v0, p0, Lcom/cocosw/bottomsheet/a;->g:Z

    if-eqz v0, :cond_1

    .line 2199
    invoke-virtual {p0}, Lcom/cocosw/bottomsheet/a;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3129
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 3131
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-lt v5, v6, :cond_a

    .line 3150
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 3151
    const-string v6, "config_showNavigationBar"

    const-string v7, "bool"

    const-string v8, "android"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 3152
    if-eqz v6, :cond_5

    .line 3153
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 3155
    const-string v5, "1"

    iget-object v6, p0, Lcom/cocosw/bottomsheet/a;->f:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v0, v2

    .line 3132
    :cond_0
    :goto_0
    if-eqz v0, :cond_a

    .line 3134
    iget-boolean v0, p0, Lcom/cocosw/bottomsheet/a;->e:Z

    if-eqz v0, :cond_7

    .line 3135
    const-string v0, "navigation_bar_height"

    .line 4168
    :goto_1
    const-string v1, "dimen"

    const-string v5, "android"

    invoke-virtual {v4, v0, v1, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 4169
    if-lez v0, :cond_d

    .line 4170
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2199
    :goto_2
    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v3, v2, v2, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 2202
    :cond_1
    sget v0, Lcom/cocosw/bottomsheet/R$id;->bottom_sheet_title:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2203
    iget-object v1, p0, Lcom/cocosw/bottomsheet/a;->d:Lcom/cocosw/bottomsheet/g;

    .line 2208
    sget v1, Lcom/cocosw/bottomsheet/R$id;->bottom_sheet_gridview:I

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/cocosw/bottomsheet/a;->a:Landroid/widget/GridView;

    .line 2209
    sget v1, Lcom/cocosw/bottomsheet/R$id;->bottom_sheet_customview:I

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2210
    sget v4, Lcom/cocosw/bottomsheet/R$id;->bottom_sheet_divider:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2213
    iget-object v4, p0, Lcom/cocosw/bottomsheet/a;->d:Lcom/cocosw/bottomsheet/g;

    invoke-static {v4}, Lcom/cocosw/bottomsheet/g;->a(Lcom/cocosw/bottomsheet/g;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2215
    iget-object v4, p0, Lcom/cocosw/bottomsheet/a;->a:Landroid/widget/GridView;

    invoke-virtual {v4, v9}, Landroid/widget/GridView;->setVisibility(I)V

    .line 2216
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2217
    iget-object v2, p0, Lcom/cocosw/bottomsheet/a;->d:Lcom/cocosw/bottomsheet/g;

    invoke-static {v2}, Lcom/cocosw/bottomsheet/g;->b(Lcom/cocosw/bottomsheet/g;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2218
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2219
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2222
    :cond_2
    iget-object v0, p0, Lcom/cocosw/bottomsheet/a;->d:Lcom/cocosw/bottomsheet/g;

    invoke-static {v0}, Lcom/cocosw/bottomsheet/g;->c(Lcom/cocosw/bottomsheet/g;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cocosw/bottomsheet/a;->b:Ljava/util/ArrayList;

    .line 2224
    iget-object v0, p0, Lcom/cocosw/bottomsheet/a;->d:Lcom/cocosw/bottomsheet/g;

    invoke-static {v0}, Lcom/cocosw/bottomsheet/g;->a(Lcom/cocosw/bottomsheet/g;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2225
    iget-object v0, p0, Lcom/cocosw/bottomsheet/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2226
    :cond_3
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2227
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cocosw/bottomsheet/h;

    .line 2228
    iget-boolean v2, v0, Lcom/cocosw/bottomsheet/h;->a:Z

    if-eqz v2, :cond_b

    .line 2229
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 3157
    :cond_4
    const-string v5, "0"

    iget-object v6, p0, Lcom/cocosw/bottomsheet/a;->f:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v1

    .line 3158
    goto/16 :goto_0

    .line 3162
    :cond_5
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto/16 :goto_0

    .line 3183
    :cond_7
    iget v0, p0, Lcom/cocosw/bottomsheet/a;->h:F

    const/high16 v5, 0x44160000    # 600.0f

    cmpl-float v0, v0, v5

    if-gez v0, :cond_8

    iget-boolean v0, p0, Lcom/cocosw/bottomsheet/a;->e:Z

    if-eqz v0, :cond_9

    .line 3137
    :cond_8
    :goto_4
    if-eqz v1, :cond_a

    .line 3140
    const-string v0, "navigation_bar_height_landscape"

    goto/16 :goto_1

    :cond_9
    move v1, v2

    .line 3183
    goto :goto_4

    :cond_a
    move v0, v2

    .line 3145
    goto/16 :goto_2

    .line 2230
    :cond_b
    invoke-static {v0}, Lcom/cocosw/bottomsheet/h;->a(Lcom/cocosw/bottomsheet/h;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    .line 2231
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You should set icon for each items in grid style"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2237
    :cond_c
    new-instance v0, Lcom/cocosw/bottomsheet/c;

    invoke-direct {v0, p0}, Lcom/cocosw/bottomsheet/c;-><init>(Lcom/cocosw/bottomsheet/a;)V

    iput-object v0, p0, Lcom/cocosw/bottomsheet/a;->c:Landroid/widget/BaseAdapter;

    .line 2321
    iget-object v0, p0, Lcom/cocosw/bottomsheet/a;->a:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/cocosw/bottomsheet/a;->c:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2322
    iget-object v0, p0, Lcom/cocosw/bottomsheet/a;->a:Landroid/widget/GridView;

    new-instance v1, Lcom/cocosw/bottomsheet/e;

    invoke-direct {v1, p0}, Lcom/cocosw/bottomsheet/e;-><init>(Lcom/cocosw/bottomsheet/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2332
    iget-object v0, p0, Lcom/cocosw/bottomsheet/a;->d:Lcom/cocosw/bottomsheet/g;

    .line 2336
    iget-object v0, p0, Lcom/cocosw/bottomsheet/a;->a:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/cocosw/bottomsheet/f;

    invoke-direct {v1, p0}, Lcom/cocosw/bottomsheet/f;-><init>(Lcom/cocosw/bottomsheet/a;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 357
    invoke-virtual {p0}, Lcom/cocosw/bottomsheet/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 358
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 359
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 360
    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 361
    invoke-virtual {p0}, Lcom/cocosw/bottomsheet/a;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 362
    return-void

    :cond_d
    move v0, v2

    goto/16 :goto_2
.end method
