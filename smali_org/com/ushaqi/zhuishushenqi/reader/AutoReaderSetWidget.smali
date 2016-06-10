.class public Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:I

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Lcom/ushaqi/zhuishushenqi/reader/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x5

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->b:I

    .line 38
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->a:Landroid/content/Context;

    .line 39
    return-void
.end method

.method private e()V
    .locals 6

    .prologue
    .line 77
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0500cf

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->b:I

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->c:I

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->setVisibility(I)V

    .line 67
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 70
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->c:I

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->b:I

    if-eq v0, v1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "auto_read_speed"

    const/4 v2, 0x0

    iget v3, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->b:I

    invoke-static {v0, v1, v2, v3}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)V

    .line 73
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->setVisibility(I)V

    .line 74
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 81
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->b:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 82
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->b:I

    .line 83
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->e()V

    .line 84
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->a:Landroid/content/Context;

    const-string v1, "auto_reader_speed"

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->b:I

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 86
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 89
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->b:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 90
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->b:I

    .line 91
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->e()V

    .line 92
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->a:Landroid/content/Context;

    const-string v1, "auto_reader_speed"

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->b:I

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 94
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 112
    :goto_0
    return-void

    .line 101
    :pswitch_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->h:Lcom/ushaqi/zhuishushenqi/reader/a;

    invoke-interface {v0}, Lcom/ushaqi/zhuishushenqi/reader/a;->b()V

    goto :goto_0

    .line 104
    :pswitch_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->h:Lcom/ushaqi/zhuishushenqi/reader/a;

    invoke-interface {v0}, Lcom/ushaqi/zhuishushenqi/reader/a;->a()V

    goto :goto_0

    .line 107
    :pswitch_2
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->E(Landroid/content/Context;)V

    .line 108
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->h:Lcom/ushaqi/zhuishushenqi/reader/a;

    invoke-interface {v0}, Lcom/ushaqi/zhuishushenqi/reader/a;->c()V

    goto :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c03eb
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setOptionClickListener(Lcom/ushaqi/zhuishushenqi/reader/a;)V
    .locals 3

    .prologue
    .line 123
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->h:Lcom/ushaqi/zhuishushenqi/reader/a;

    .line 1043
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->a:Landroid/content/Context;

    const-string v1, "auto_reader_speed"

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->b:I

    .line 1045
    const v0, 0x7f0c03e9

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->d:Landroid/widget/TextView;

    .line 1046
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->e()V

    .line 1048
    const v0, 0x7f0c03eb

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->e:Landroid/widget/Button;

    .line 1049
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1051
    const v0, 0x7f0c03ec

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->f:Landroid/widget/Button;

    .line 1052
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1054
    const v0, 0x7f0c03ed

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->g:Landroid/widget/Button;

    .line 1055
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    return-void
.end method
