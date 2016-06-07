.class public Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:I

.field private static h:Lcom/ushaqi/zhuishushenqi/widget/i;

.field private static i:I


# instance fields
.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private l:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 59
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->b()V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->b()V

    .line 65
    return-void
.end method

.method private a(Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/widget/h;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    shl-int/lit8 v1, p2, 0x2

    if-le v0, v1, :cond_0

    .line 277
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/h;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/widget/h;-><init>(Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;)V

    .line 278
    sget v1, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->e:I

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/h;->a(I)V

    .line 279
    iget-object v1, v0, Lcom/ushaqi/zhuishushenqi/widget/h;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->j:Ljava/util/List;

    shl-int/lit8 v3, p2, 0x2

    shl-int/lit8 v4, p2, 0x2

    add-int/lit8 v4, v4, 0x4

    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->j:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 280
    sget v1, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->e:I

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/h;->a(I)V

    .line 281
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_0
    return-void
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x0

    const/high16 v2, 0x41400000    # 12.0f

    .line 68
    invoke-virtual {p0, v3}, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->setOrientation(I)V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->j:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->k:Ljava/util/List;

    .line 71
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->g:I

    .line 72
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->b:I

    .line 73
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->c:I

    .line 74
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->d:I

    .line 75
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->e:I

    .line 76
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->f:I

    .line 79
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "customer_night_theme"

    invoke-static {v0, v1, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->l:[I

    .line 88
    :goto_0
    return-void

    .line 84
    :cond_0
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->l:[I

    goto :goto_0

    .line 80
    nop

    :array_0
    .array-data 4
        0x7f020077
        0x7f020079
        0x7f02007b
        0x7f02007d
        0x7f02007f
        0x7f020081
        0x7f020083
    .end array-data

    .line 84
    :array_1
    .array-data 4
        0x7f020076
        0x7f020078
        0x7f02007a
        0x7f02007c
        0x7f02007e
        0x7f020080
        0x7f020082
    .end array-data
.end method


# virtual methods
.method public final a()V
    .locals 13

    .prologue
    const/4 v3, 0x0

    .line 163
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->j:Ljava/util/List;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/widget/g;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/widget/g;-><init>(Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1157
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->removeAllViews()V

    .line 1158
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1130
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 1173
    iget-object v9, p0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->j:Ljava/util/List;

    .line 1174
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1177
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->getMeasuredWidth()I

    move-result v10

    .line 1178
    if-nez v10, :cond_0

    .line 1267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1268
    invoke-direct {p0, v0, v3}, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->a(Ljava/util/List;I)V

    .line 1269
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->a(Ljava/util/List;I)V

    .line 1270
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->a(Ljava/util/List;I)V

    move-object v4, v0

    :goto_0
    move v7, v3

    move v1, v3

    .line 1134
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_4

    .line 1135
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/ushaqi/zhuishushenqi/widget/h;

    move v5, v3

    move v6, v1

    .line 1136
    :goto_2
    iget-object v0, v2, Lcom/ushaqi/zhuishushenqi/widget/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_3

    .line 1137
    iget-object v0, v2, Lcom/ushaqi/zhuishushenqi/widget/h;->a:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;

    .line 1138
    const v0, 0x7f030072

    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1139
    const/high16 v9, 0x41400000    # 12.0f

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1140
    const v9, 0x7f020154

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1141
    sget v9, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->c:I

    sget v10, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->b:I

    sget v11, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->c:I

    sget v12, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->b:I

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1142
    iget-object v9, v1, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;->content:Ljava/lang/String;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1143
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1144
    iget v9, v1, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;->leftMargin:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1145
    iget-object v9, p0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->l:[I

    iget-object v10, p0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->l:[I

    array-length v10, v10

    rem-int v10, v6, v10

    aget v9, v9, v10

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1146
    iget-object v9, p0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->k:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1147
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->addView(Landroid/view/View;)V

    .line 1148
    iget v0, v1, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;->show:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;->show:I

    .line 1149
    add-int/lit8 v1, v6, 0x1

    .line 1136
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v6, v1

    goto :goto_2

    .line 1179
    :cond_0
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/h;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/widget/h;-><init>(Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;)V

    move v1, v3

    move-object v2, v0

    move v4, v3

    move v5, v3

    .line 1180
    :goto_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1181
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;

    .line 1182
    iget-object v7, v0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;->content:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    .line 1183
    sget v11, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->g:I

    mul-int/2addr v7, v11

    sget v11, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->c:I

    shl-int/lit8 v11, v11, 0x1

    add-int/2addr v7, v11

    sget v11, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->e:I

    add-int/2addr v7, v11

    .line 1184
    add-int/2addr v4, v7

    .line 1185
    sget v11, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->f:I

    sub-int v11, v10, v11

    if-lt v4, v11, :cond_1

    .line 1186
    add-int/lit8 v5, v5, 0x1

    .line 1189
    sget v4, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->e:I

    invoke-virtual {v2, v4}, Lcom/ushaqi/zhuishushenqi/widget/h;->a(I)V

    .line 1193
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1194
    new-instance v2, Lcom/ushaqi/zhuishushenqi/widget/h;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/widget/h;-><init>(Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;)V

    move v4, v7

    .line 1197
    :cond_1
    const/4 v7, 0x3

    if-eq v5, v7, :cond_2

    .line 1200
    iget-object v7, v2, Lcom/ushaqi/zhuishushenqi/widget/h;->a:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1180
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_2
    move-object v4, v6

    .line 1202
    goto/16 :goto_0

    .line 1134
    :cond_3
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    move v1, v6

    goto/16 :goto_1

    .line 1152
    :cond_4
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->j:Ljava/util/List;

    sget-object v1, Lcom/ushaqi/zhuishushenqi/c;->e:Ljava/lang/String;

    const-string v2, "search_hotword.txt"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 261
    sget-object v0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->h:Lcom/ushaqi/zhuishushenqi/widget/i;

    if-eqz v0, :cond_0

    .line 262
    sget-object v0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->h:Lcom/ushaqi/zhuishushenqi/widget/i;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->k:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/i;->a(Ljava/lang/String;)V

    .line 264
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 224
    sget v1, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->c:I

    sub-int v5, p4, v1

    .line 228
    sget-object v1, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "changed = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " left = 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " top = 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " right = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " botom = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->getChildCount()I

    move-result v6

    move v4, v0

    move v1, v0

    move v2, v0

    .line 236
    :goto_0
    if-ge v4, v6, :cond_2

    .line 237
    invoke-virtual {p0, v4}, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 238
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 239
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 240
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 241
    add-int v0, v8, v9

    add-int/2addr v1, v0

    .line 242
    if-nez v2, :cond_1

    move v0, v3

    .line 248
    :goto_1
    if-lt v1, v5, :cond_0

    .line 249
    add-int v1, v8, v9

    .line 250
    add-int/lit8 v2, v2, 0x1

    .line 251
    sget v0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->d:I

    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    add-int/2addr v0, v3

    .line 255
    :cond_0
    sub-int v8, v1, v8

    sub-int v3, v0, v3

    invoke-virtual {v7, v8, v3, v1, v0}, Landroid/view/View;->layout(IIII)V

    .line 236
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 245
    :cond_1
    sget v0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->d:I

    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    add-int/2addr v0, v3

    goto :goto_1

    .line 257
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 208
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->getChildCount()I

    move-result v2

    move v0, v1

    .line 209
    :goto_0
    if-ge v0, v2, :cond_1

    .line 210
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 211
    invoke-virtual {v3, v1, v1}, Landroid/view/View;->measure(II)V

    .line 212
    if-nez v0, :cond_0

    .line 213
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sget v4, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->d:I

    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x3

    sput v3, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->i:I

    .line 209
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 217
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    sget v1, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->i:I

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->setMeasuredDimension(II)V

    .line 218
    return-void
.end method

.method public setOnItemClickListener(Lcom/ushaqi/zhuishushenqi/widget/i;)V
    .locals 0

    .prologue
    .line 91
    sput-object p1, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->h:Lcom/ushaqi/zhuishushenqi/widget/i;

    .line 92
    return-void
.end method

.method public setWords(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 108
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 109
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;

    iget v1, v0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;->show:I

    .line 113
    const/4 v0, 0x1

    move v2, v1

    move v1, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 114
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;

    iget v0, v0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;->show:I

    if-ge v0, v2, :cond_2

    .line 115
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;

    iget v2, v0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;->show:I

    .line 113
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v3

    .line 118
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 119
    new-instance v3, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;

    invoke-direct {v3}, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;-><init>()V

    .line 120
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;->content:Ljava/lang/String;

    iput-object v0, v3, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;->content:Ljava/lang/String;

    .line 121
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;

    iget v0, v0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;->show:I

    sub-int/2addr v0, v2

    iput v0, v3, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;->show:I

    .line 122
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->j:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 124
    :cond_4
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->a()V

    goto :goto_0
.end method

.method public setWords([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 98
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 99
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 100
    new-instance v3, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;

    invoke-direct {v3}, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;-><init>()V

    .line 101
    iput-object v2, v3, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;->content:Ljava/lang/String;

    .line 102
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->j:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->a()V

    .line 105
    return-void
.end method
