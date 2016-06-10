.class final Landroid/support/design/widget/aj;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:I

.field private final b:Landroid/graphics/Paint;

.field private c:I

.field private d:F

.field private e:I

.field private f:I

.field private synthetic g:Landroid/support/design/widget/TabLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1292
    iput-object p1, p0, Landroid/support/design/widget/aj;->g:Landroid/support/design/widget/TabLayout;

    .line 1293
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1286
    iput v0, p0, Landroid/support/design/widget/aj;->c:I

    .line 1289
    iput v0, p0, Landroid/support/design/widget/aj;->e:I

    .line 1290
    iput v0, p0, Landroid/support/design/widget/aj;->f:I

    .line 1294
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/aj;->setWillNotDraw(Z)V

    .line 1295
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/aj;->b:Landroid/graphics/Paint;

    .line 1296
    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/aj;F)F
    .locals 1

    .prologue
    .line 1282
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/aj;->d:F

    return v0
.end method

.method static synthetic a(Landroid/support/design/widget/aj;I)I
    .locals 0

    .prologue
    .line 1282
    iput p1, p0, Landroid/support/design/widget/aj;->c:I

    return p1
.end method

.method private a()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000

    .line 1385
    iget v0, p0, Landroid/support/design/widget/aj;->c:I

    invoke-virtual {p0, v0}, Landroid/support/design/widget/aj;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1388
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    .line 1389
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 1390
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1392
    iget v2, p0, Landroid/support/design/widget/aj;->d:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, p0, Landroid/support/design/widget/aj;->c:I

    invoke-virtual {p0}, Landroid/support/design/widget/aj;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 1394
    iget v2, p0, Landroid/support/design/widget/aj;->c:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Landroid/support/design/widget/aj;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1395
    iget v3, p0, Landroid/support/design/widget/aj;->d:F

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Landroid/support/design/widget/aj;->d:F

    sub-float v4, v5, v4

    int-to-float v0, v0

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 1397
    iget v3, p0, Landroid/support/design/widget/aj;->d:F

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    iget v3, p0, Landroid/support/design/widget/aj;->d:F

    sub-float v3, v5, v3

    int-to-float v1, v1

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 1404
    :cond_0
    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/support/design/widget/aj;->b(II)V

    .line 1405
    return-void

    .line 1401
    :cond_1
    const/4 v0, -0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/design/widget/aj;II)V
    .locals 0

    .prologue
    .line 1282
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/aj;->b(II)V

    return-void
.end method

.method private b(II)V
    .locals 1

    .prologue
    .line 1408
    iget v0, p0, Landroid/support/design/widget/aj;->e:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/support/design/widget/aj;->f:I

    if-eq p2, v0, :cond_1

    .line 1410
    :cond_0
    iput p1, p0, Landroid/support/design/widget/aj;->e:I

    .line 1411
    iput p2, p0, Landroid/support/design/widget/aj;->f:I

    .line 1412
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1414
    :cond_1
    return-void
.end method


# virtual methods
.method final a(I)V
    .locals 1

    .prologue
    .line 1299
    iget-object v0, p0, Landroid/support/design/widget/aj;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1300
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1301
    return-void
.end method

.method final a(IF)V
    .locals 1

    .prologue
    .line 1319
    iget-object v0, p0, Landroid/support/design/widget/aj;->g:Landroid/support/design/widget/TabLayout;

    invoke-static {v0}, Landroid/support/design/widget/TabLayout;->j(Landroid/support/design/widget/TabLayout;)Landroid/support/design/widget/au;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/aj;->g:Landroid/support/design/widget/TabLayout;

    invoke-static {v0}, Landroid/support/design/widget/TabLayout;->j(Landroid/support/design/widget/TabLayout;)Landroid/support/design/widget/au;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/au;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1325
    :goto_0
    return-void

    .line 1322
    :cond_0
    iput p1, p0, Landroid/support/design/widget/aj;->c:I

    .line 1323
    iput p2, p0, Landroid/support/design/widget/aj;->d:F

    .line 1324
    invoke-direct {p0}, Landroid/support/design/widget/aj;->a()V

    goto :goto_0
.end method

.method final a(II)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 1417
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    .line 1420
    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/design/widget/aj;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1421
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1422
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    .line 1426
    iget v2, p0, Landroid/support/design/widget/aj;->c:I

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v1, :cond_3

    .line 1428
    iget v2, p0, Landroid/support/design/widget/aj;->e:I

    .line 1429
    iget v4, p0, Landroid/support/design/widget/aj;->f:I

    .line 1450
    :goto_1
    if-ne v2, v3, :cond_0

    if-eq v4, v5, :cond_1

    .line 1451
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/aj;->g:Landroid/support/design/widget/TabLayout;

    invoke-static {}, Landroid/support/design/widget/aP;->a()Landroid/support/design/widget/au;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout;Landroid/support/design/widget/au;)Landroid/support/design/widget/au;

    move-result-object v6

    .line 1452
    sget-object v0, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v0}, Landroid/support/design/widget/au;->a(Landroid/view/animation/Interpolator;)V

    .line 1453
    const/16 v0, 0x12c

    invoke-virtual {v6, v0}, Landroid/support/design/widget/au;->a(I)V

    .line 1454
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000

    invoke-virtual {v6, v0, v1}, Landroid/support/design/widget/au;->a(FF)V

    .line 1455
    new-instance v0, Landroid/support/design/widget/ak;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/design/widget/ak;-><init>(Landroid/support/design/widget/aj;IIII)V

    invoke-virtual {v6, v0}, Landroid/support/design/widget/au;->a(Landroid/support/design/widget/ay;)V

    .line 1464
    new-instance v0, Landroid/support/design/widget/al;

    invoke-direct {v0, p0, p1}, Landroid/support/design/widget/al;-><init>(Landroid/support/design/widget/aj;I)V

    invoke-virtual {v6, v0}, Landroid/support/design/widget/au;->a(Landroid/support/design/widget/ax;)V

    .line 1477
    invoke-virtual {v6}, Landroid/support/design/widget/au;->a()V

    .line 1479
    :cond_1
    return-void

    .line 1417
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1432
    :cond_3
    iget-object v1, p0, Landroid/support/design/widget/aj;->g:Landroid/support/design/widget/TabLayout;

    const/16 v2, 0x18

    invoke-static {v1, v2}, Landroid/support/design/widget/TabLayout;->b(Landroid/support/design/widget/TabLayout;I)I

    move-result v1

    .line 1433
    iget v2, p0, Landroid/support/design/widget/aj;->c:I

    if-ge p1, v2, :cond_4

    .line 1435
    if-nez v0, :cond_5

    .line 1438
    add-int v4, v5, v1

    move v2, v4

    goto :goto_1

    .line 1442
    :cond_4
    if-eqz v0, :cond_5

    .line 1443
    add-int v4, v5, v1

    move v2, v4

    goto :goto_1

    .line 1445
    :cond_5
    sub-int v4, v3, v1

    move v2, v4

    goto :goto_1
.end method

.method final b(I)V
    .locals 0

    .prologue
    .line 1304
    iput p1, p0, Landroid/support/design/widget/aj;->a:I

    .line 1305
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1306
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 1483
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1486
    iget v0, p0, Landroid/support/design/widget/aj;->e:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/design/widget/aj;->f:I

    iget v1, p0, Landroid/support/design/widget/aj;->e:I

    if-le v0, v1, :cond_0

    .line 1487
    iget v0, p0, Landroid/support/design/widget/aj;->e:I

    int-to-float v1, v0

    invoke-virtual {p0}, Landroid/support/design/widget/aj;->getHeight()I

    move-result v0

    iget v2, p0, Landroid/support/design/widget/aj;->a:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Landroid/support/design/widget/aj;->f:I

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/support/design/widget/aj;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Landroid/support/design/widget/aj;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1490
    :cond_0
    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 1379
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 1381
    invoke-direct {p0}, Landroid/support/design/widget/aj;->a()V

    .line 1382
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 1329
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1331
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000

    if-eq v1, v2, :cond_1

    .line 1375
    :cond_0
    :goto_0
    return-void

    .line 1337
    :cond_1
    iget-object v1, p0, Landroid/support/design/widget/aj;->g:Landroid/support/design/widget/TabLayout;

    invoke-static {v1}, Landroid/support/design/widget/TabLayout;->k(Landroid/support/design/widget/TabLayout;)I

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/aj;->g:Landroid/support/design/widget/TabLayout;

    invoke-static {v1}, Landroid/support/design/widget/TabLayout;->l(Landroid/support/design/widget/TabLayout;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 1338
    invoke-virtual {p0}, Landroid/support/design/widget/aj;->getChildCount()I

    move-result v3

    .line 1340
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move v1, v0

    move v2, v0

    .line 1344
    :goto_1
    if-ge v1, v3, :cond_2

    .line 1345
    invoke-virtual {p0, v1}, Landroid/support/design/widget/aj;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1346
    invoke-virtual {v5, v4, p2}, Landroid/view/View;->measure(II)V

    .line 1347
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1344
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1350
    :cond_2
    if-lez v2, :cond_0

    .line 1355
    iget-object v1, p0, Landroid/support/design/widget/aj;->g:Landroid/support/design/widget/TabLayout;

    const/16 v4, 0x10

    invoke-static {v1, v4}, Landroid/support/design/widget/TabLayout;->b(Landroid/support/design/widget/TabLayout;I)I

    move-result v1

    .line 1356
    mul-int v4, v2, v3

    invoke-virtual {p0}, Landroid/support/design/widget/aj;->getMeasuredWidth()I

    move-result v5

    shl-int/lit8 v1, v1, 0x1

    sub-int v1, v5, v1

    if-gt v4, v1, :cond_3

    move v1, v0

    .line 1359
    :goto_2
    if-ge v1, v3, :cond_4

    .line 1360
    invoke-virtual {p0, v1}, Landroid/support/design/widget/aj;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1361
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1362
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1363
    const/4 v4, 0x0

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1359
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1368
    :cond_3
    iget-object v1, p0, Landroid/support/design/widget/aj;->g:Landroid/support/design/widget/TabLayout;

    invoke-static {v1, v0}, Landroid/support/design/widget/TabLayout;->c(Landroid/support/design/widget/TabLayout;I)I

    .line 1369
    iget-object v0, p0, Landroid/support/design/widget/aj;->g:Landroid/support/design/widget/TabLayout;

    invoke-static {v0}, Landroid/support/design/widget/TabLayout;->m(Landroid/support/design/widget/TabLayout;)V

    .line 1373
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_0
.end method
