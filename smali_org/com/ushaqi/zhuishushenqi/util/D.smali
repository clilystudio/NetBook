.class public Lcom/ushaqi/zhuishushenqi/util/D;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "SourceFile"


# instance fields
.field private d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/ushaqi/zhuishushenqi/util/D;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/D;->d:[I

    .line 19
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/ar;II)V
    .locals 14

    .prologue
    .line 31
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 32
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 33
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 34
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 36
    const/4 v2, 0x0

    .line 37
    const/4 v1, 0x0

    .line 38
    const/4 v0, 0x0

    move v3, v2

    move v2, v1

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/util/D;->o()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    const/4 v0, 0x0

    .line 41
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    iget-object v10, p0, Lcom/ushaqi/zhuishushenqi/util/D;->d:[I

    .line 1076
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ar;->b(I)Landroid/view/View;

    move-result-object v11

    .line 1078
    if-eqz v11, :cond_0

    .line 1079
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ap;

    .line 1082
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/util/D;->k()I

    move-result v12

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/util/D;->m()I

    move-result v13

    add-int/2addr v12, v13

    iget v13, v0, Landroid/support/v7/widget/ap;->width:I

    .line 1081
    invoke-static {v8, v12, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    .line 1085
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/util/D;->l()I

    move-result v12

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/util/D;->n()I

    move-result v13

    add-int/2addr v12, v13

    iget v13, v0, Landroid/support/v7/widget/ap;->height:I

    .line 1084
    invoke-static {v9, v12, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    .line 1087
    invoke-virtual {v11, v8, v9}, Landroid/view/View;->measure(II)V

    .line 1088
    const/4 v8, 0x0

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    iget v12, v0, Landroid/support/v7/widget/ap;->leftMargin:I

    add-int/2addr v9, v12

    iget v12, v0, Landroid/support/v7/widget/ap;->rightMargin:I

    add-int/2addr v9, v12

    aput v9, v10, v8

    .line 1089
    const/4 v8, 0x1

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    iget v12, v0, Landroid/support/v7/widget/ap;->bottomMargin:I

    add-int/2addr v9, v12

    iget v0, v0, Landroid/support/v7/widget/ap;->topMargin:I

    add-int/2addr v0, v9

    aput v0, v10, v8

    .line 1090
    invoke-virtual {p1, v11}, Landroid/support/v7/widget/ar;->a(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/util/D;->e()I

    move-result v0

    if-nez v0, :cond_2

    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/D;->d:[I

    const/4 v8, 0x0

    aget v0, v0, v8

    add-int/2addr v3, v0

    .line 46
    if-nez v1, :cond_1

    .line 47
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/D;->d:[I

    const/4 v2, 0x1

    aget v2, v0, v2

    .line 38
    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1092
    :catch_0
    move-exception v0

    .line 1093
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1094
    :catchall_0
    move-exception v0

    throw v0

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/D;->d:[I

    const/4 v8, 0x1

    aget v0, v0, v8

    add-int/2addr v2, v0

    .line 51
    if-nez v1, :cond_1

    .line 52
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/D;->d:[I

    const/4 v3, 0x0

    aget v3, v0, v3

    goto :goto_2

    .line 56
    :cond_3
    packed-switch v6, :pswitch_data_0

    .line 63
    :goto_3
    packed-switch v7, :pswitch_data_1

    .line 70
    :goto_4
    invoke-virtual {p0, v3, v2}, Lcom/ushaqi/zhuishushenqi/util/D;->e(II)V

    .line 71
    return-void

    :pswitch_0
    move v3, v5

    .line 58
    goto :goto_3

    :pswitch_1
    move v2, v4

    .line 65
    goto :goto_4

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x40000000
        :pswitch_0
    .end packed-switch

    .line 63
    :pswitch_data_1
    .packed-switch 0x40000000
        :pswitch_1
    .end packed-switch
.end method
