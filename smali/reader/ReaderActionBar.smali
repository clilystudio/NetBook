.class public Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/umeng/update/a;

.field private c:Lcom/ushaqi/zhuishushenqi/reader/bZ;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;)Lcom/ushaqi/zhuishushenqi/reader/bZ;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->c:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;I)V
    .locals 1

    .prologue
    .line 22
    .line 1131
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->b:Lcom/umeng/update/a;

    if-eqz v0, :cond_0

    .line 1132
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->b:Lcom/umeng/update/a;

    invoke-interface {v0, p1}, Lcom/umeng/update/a;->a(I)V

    .line 22
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->c:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->d:Landroid/widget/TextView;

    const v1, 0x7f050136

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 156
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->e:Landroid/widget/ImageView;

    const v1, 0x7f02018a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 161
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->d:Landroid/widget/TextView;

    const v1, 0x7f050134

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 159
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->e:Landroid/widget/ImageView;

    const v1, 0x7f020189

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 120
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 121
    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/design/widget/am;->k(Landroid/content/Context;)I

    move-result v1

    .line 123
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 127
    :goto_0
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    return-void

    .line 125
    :cond_0
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method public final b()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method public final b(Z)V
    .locals 2

    .prologue
    .line 164
    const v0, 0x7f0c0401

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 165
    if-eqz p1, :cond_0

    .line 166
    const v1, 0x7f050153

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    const v1, 0x7f050154

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public final c(Z)V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 187
    return-void
.end method

.method public final d(Z)V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->h:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 194
    return-void
.end method

.method public final e(Z)V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->j:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 201
    return-void
.end method

.method public final f(Z)V
    .locals 2

    .prologue
    .line 207
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->i:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 208
    return-void

    .line 207
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public final g(Z)V
    .locals 2

    .prologue
    .line 229
    const v0, 0x7f0c0405

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 230
    return-void

    .line 229
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 52
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 1060
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1061
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/design/widget/am;->k(Landroid/content/Context;)I

    move-result v1

    .line 1062
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1063
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1065
    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/ah;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/ah;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;)V

    .line 1072
    const v0, 0x7f0c03fa

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->f:Landroid/widget/TextView;

    .line 1073
    const v0, 0x7f0c03e3

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->g:Landroid/widget/TextView;

    .line 1074
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "switch_xunfei_read"

    invoke-static {v0, v2}, Lcom/arcsoft/hpay100/a/a;->r(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1075
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->g:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1077
    :cond_0
    const v0, 0x7f0c03e5

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->h:Landroid/view/View;

    .line 1078
    const v0, 0x7f0c03e8

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->i:Landroid/view/View;

    .line 1079
    const v0, 0x7f0c03ff

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->d:Landroid/widget/TextView;

    .line 1080
    const v0, 0x7f0c03fe

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->e:Landroid/widget/ImageView;

    .line 1081
    const v0, 0x7f0c0403

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->a:Landroid/view/View;

    .line 1082
    const v0, 0x7f0c03e6

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->j:Landroid/view/View;

    .line 1083
    const v0, 0x7f0c0406

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->k:Landroid/widget/TextView;

    .line 1084
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1085
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1086
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1087
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1088
    const v0, 0x7f0c0405

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1089
    const v0, 0x7f0c03f9

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1090
    const v0, 0x7f0c0402

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1091
    const v0, 0x7f0c0404

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1092
    const v0, 0x7f0c0400

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1093
    const v0, 0x7f0c03e4

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1096
    const v0, 0x7f0c03fd

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1097
    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/ai;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/ai;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method

.method public setChapterLink(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 216
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->g(Z)V

    .line 222
    :goto_0
    return-void

    .line 219
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->g(Z)V

    .line 220
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setOnBtnClickListener$7ead76dc(Lcom/umeng/update/a;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->b:Lcom/umeng/update/a;

    .line 138
    return-void
.end method

.method public setReaderStyle(Lcom/ushaqi/zhuishushenqi/reader/bZ;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->c:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    .line 150
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->a()V

    .line 151
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    return-void
.end method
