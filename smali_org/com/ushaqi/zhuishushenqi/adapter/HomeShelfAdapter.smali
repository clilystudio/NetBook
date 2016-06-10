.class public Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;
.super Lcom/ushaqi/zhuishushenqi/adapter/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/adapter/u",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/BookShelf;",
        ">;"
    }
.end annotation


# static fields
.field public static a:Z


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;

.field private d:Z

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookShelf;",
            ">;"
        }
    .end annotation
.end field

.field private f:[Z

.field private g:Z

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/adapter/u;-><init>()V

    .line 51
    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->d:Z

    .line 54
    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->g:Z

    .line 58
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->b:Landroid/content/Context;

    .line 59
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->c:Landroid/view/LayoutInflater;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->e:Ljava/util/List;

    .line 61
    return-void
.end method

.method private a(ILandroid/widget/CheckBox;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 215
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->d:Z

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p2, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 220
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->g:Z

    .line 221
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->f:[Z

    array-length v0, v0

    if-gt v0, p1, :cond_2

    .line 222
    add-int/lit8 v0, p1, 0x1

    new-array v2, v0, [Z

    move v0, v1

    .line 223
    :goto_1
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->f:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 224
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->f:[Z

    aget-boolean v3, v3, v0

    aput-boolean v3, v2, v0

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 218
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 226
    :cond_1
    iput-object v2, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->f:[Z

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->f:[Z

    aget-boolean v0, v0, p1

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 229
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->b(I)V

    .line 230
    iput-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->g:Z

    .line 231
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/q;

    invoke-direct {v0, p0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/q;-><init>(Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;I)V

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 241
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->g:Z

    return v0
.end method

.method private b(I)V
    .locals 3

    .prologue
    .line 244
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->f:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->e:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->e:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 252
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->h:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5220\u9664("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 256
    :goto_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->g()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 257
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->i:Landroid/widget/Button;

    const-string v1, "\u53d6\u6d88\u5168\u9009"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 261
    :goto_2
    return-void

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->e:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 254
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->h:Landroid/widget/Button;

    const-string v1, "\u5220\u9664"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 259
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->i:Landroid/widget/Button;

    const-string v1, "\u5168\u9009"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;)[Z
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->f:[Z

    return-object v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->b:Landroid/content/Context;

    return-object v0
.end method

.method private g()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 264
    move v1, v0

    .line 265
    :goto_0
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->f:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 266
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->getItemViewType(I)I

    move-result v2

    .line 267
    if-eqz v2, :cond_0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 268
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 265
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 271
    :cond_2
    return v1
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 132
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->f:[Z

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->f:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    aput-boolean v0, v1, p1

    .line 133
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->notifyDataSetChanged()V

    .line 134
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->h:Landroid/widget/Button;

    .line 110
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->i:Landroid/widget/Button;

    .line 111
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookShelf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/u;->a(Ljava/util/List;)V

    .line 66
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->f:[Z

    .line 67
    return-void
.end method

.method public final bridge synthetic a([Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 45
    check-cast p1, [Lcom/ushaqi/zhuishushenqi/model/BookShelf;

    .line 6070
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/u;->a([Ljava/lang/Object;)V

    .line 6071
    array-length v0, p1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->f:[Z

    .line 45
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->d:Z

    return v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->d:Z

    .line 119
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->notifyDataSetChanged()V

    .line 120
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 123
    iput-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->d:Z

    move v0, v1

    .line 124
    :goto_0
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->f:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->f:[Z

    aput-boolean v1, v2, v0

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 128
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->notifyDataSetChanged()V

    .line 129
    return-void
.end method

.method public final d()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 275
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->f:[Z

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_5

    aget-boolean v4, v2, v0

    .line 276
    if-nez v4, :cond_4

    move v0, v1

    .line 5285
    :goto_1
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->f:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 5286
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->f:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v0

    .line 5285
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5288
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->f:[Z

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 5289
    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;

    .line 5290
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getType()I

    move-result v2

    .line 5291
    if-eqz v2, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 5292
    :cond_1
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5293
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5288
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5297
    :cond_3
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->notifyDataSetChanged()V

    .line 282
    :goto_3
    return-void

    .line 275
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 5301
    :goto_4
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->f:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_6

    .line 5302
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->f:[Z

    aput-boolean v1, v2, v0

    .line 5301
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 5304
    :cond_6
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5305
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->notifyDataSetChanged()V

    goto :goto_3
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookShelf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->e:Ljava/util/List;

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 425
    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getType()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    const/high16 v9, 0x42c80000

    const/16 v2, 0x8

    const/4 v8, 0x3

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 81
    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;

    .line 82
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getType()I

    move-result v4

    .line 1385
    if-nez p2, :cond_2

    .line 1386
    packed-switch v4, :pswitch_data_0

    .line 84
    :cond_0
    :goto_0
    packed-switch v4, :pswitch_data_1

    .line 105
    :cond_1
    :goto_1
    return-object p2

    .line 1388
    :pswitch_0
    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->c:Landroid/view/LayoutInflater;

    const v6, 0x7f030109

    invoke-virtual {v5, v6, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 1391
    :pswitch_1
    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->c:Landroid/view/LayoutInflater;

    const v6, 0x7f03010b

    invoke-virtual {v5, v6, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 1394
    :pswitch_2
    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->c:Landroid/view/LayoutInflater;

    const v6, 0x7f03010e

    invoke-virtual {v5, v6, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 1397
    :pswitch_3
    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->c:Landroid/view/LayoutInflater;

    const v6, 0x7f03010d

    invoke-virtual {v5, v6, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 1400
    :pswitch_4
    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->c:Landroid/view/LayoutInflater;

    const v6, 0x7f03010a

    invoke-virtual {v5, v6, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 1403
    :cond_2
    iget-boolean v5, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->d:Z

    if-eqz v5, :cond_4

    .line 1404
    if-eq v4, v3, :cond_3

    if-ne v4, v8, :cond_0

    .line 1405
    :cond_3
    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->c:Landroid/view/LayoutInflater;

    const v6, 0x7f03010c

    invoke-virtual {v5, v6, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 1408
    :cond_4
    packed-switch v4, :pswitch_data_2

    :pswitch_5
    goto :goto_0

    .line 1410
    :pswitch_6
    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->c:Landroid/view/LayoutInflater;

    const v6, 0x7f030109

    invoke-virtual {v5, v6, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 1413
    :pswitch_7
    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->c:Landroid/view/LayoutInflater;

    const v6, 0x7f03010d

    invoke-virtual {v5, v6, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 2176
    :pswitch_8
    new-instance v4, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$BookHolder;

    invoke-direct {v4, p2}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$BookHolder;-><init>(Landroid/view/View;)V

    .line 2177
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getBookRecord()Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    move-result-object v5

    .line 2178
    iget-object v0, v4, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$BookHolder;->cover:Lcom/ushaqi/zhuishushenqi/widget/CoverView;

    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getFullCover()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f020106

    invoke-virtual {v0, v6, v7}, Lcom/ushaqi/zhuishushenqi/widget/CoverView;->setImageUrl(Ljava/lang/String;I)V

    .line 2179
    iget-object v0, v4, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$BookHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2180
    iget-object v0, v4, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$BookHolder;->desc:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->buildDesc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2181
    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->isUnread()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->d:Z

    if-nez v0, :cond_6

    .line 2182
    iget-object v0, v4, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$BookHolder;->flag:Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;

    invoke-virtual {v0, v8}, Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;->setType(I)V

    .line 2187
    :goto_2
    iget-object v0, v4, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$BookHolder;->check:Landroid/widget/CheckBox;

    invoke-direct {p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->a(ILandroid/widget/CheckBox;)V

    .line 2189
    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->isTop()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    .line 2190
    :goto_3
    iget-object v2, v4, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$BookHolder;->top:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2192
    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getReadMode()I

    move-result v0

    .line 2194
    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    .line 2195
    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getDownloadedSource()Ljava/lang/String;

    move-result-object v2

    .line 2196
    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->g(I)Ljava/lang/String;

    move-result-object v0

    .line 2197
    if-eqz v2, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v1, v3

    .line 2201
    :cond_5
    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getBookId()Ljava/lang/String;

    move-result-object v2

    .line 2317
    invoke-static {v2}, Landroid/support/design/widget/am;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2318
    if-eqz v1, :cond_8

    .line 2319
    iget-object v0, v4, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$BookHolder;->coverLoadingLayer:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->f()V

    goto/16 :goto_1

    .line 2184
    :cond_6
    iget-object v0, v4, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$BookHolder;->flag:Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;->setType(I)V

    goto :goto_2

    :cond_7
    move v0, v2

    .line 2189
    goto :goto_3

    .line 2321
    :cond_8
    iget-object v0, v4, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$BookHolder;->coverLoadingLayer:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->c()V

    goto/16 :goto_1

    .line 2325
    :cond_9
    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->get(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;

    move-result-object v1

    .line 2326
    if-nez v1, :cond_a

    .line 2327
    iget-object v0, v4, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$BookHolder;->coverLoadingLayer:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->c()V

    goto/16 :goto_1

    .line 2330
    :cond_a
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->getProgress()I

    move-result v0

    .line 2331
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->getTotal()I

    move-result v5

    .line 2332
    if-lez v5, :cond_b

    .line 2333
    int-to-float v0, v0

    int-to-float v5, v5

    div-float/2addr v0, v5

    mul-float/2addr v0, v9

    float-to-int v0, v0

    .line 2335
    int-to-float v0, v0

    const/high16 v5, 0x42be0000

    mul-float/2addr v0, v5

    div-float/2addr v0, v9

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x5

    .line 2337
    :cond_b
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->getStatus()I

    move-result v1

    .line 2338
    const/4 v5, 0x2

    if-ne v1, v5, :cond_d

    .line 2339
    iget-object v1, v4, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$BookHolder;->coverLoadingLayer:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->setProgress(I)V

    .line 2351
    :cond_c
    :goto_4
    iget-object v0, v4, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$BookHolder;->coverLoadingLayer:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/adapter/r;

    invoke-direct {v1, p0, v2}, Lcom/ushaqi/zhuishushenqi/adapter/r;-><init>(Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->setCoverListener(Lcom/ushaqi/zhuishushenqi/widget/y;)V

    goto/16 :goto_1

    .line 2340
    :cond_d
    if-ne v1, v8, :cond_e

    .line 2341
    iget-object v0, v4, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$BookHolder;->coverLoadingLayer:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->b()V

    goto :goto_4

    .line 2342
    :cond_e
    if-ne v1, v3, :cond_f

    .line 2343
    iget-object v0, v4, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$BookHolder;->coverLoadingLayer:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->d()V

    goto :goto_4

    .line 2344
    :cond_f
    const/4 v0, 0x5

    if-ne v1, v0, :cond_10

    .line 2345
    iget-object v0, v4, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$BookHolder;->coverLoadingLayer:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->e()V

    goto :goto_4

    .line 2347
    :cond_10
    iget-object v0, v4, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$BookHolder;->coverLoadingLayer:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->g()Z

    move-result v0

    if-nez v0, :cond_c

    .line 2348
    iget-object v0, v4, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$BookHolder;->coverLoadingLayer:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->c()V

    goto :goto_4

    .line 89
    :pswitch_9
    iget-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->d:Z

    if-nez v1, :cond_1

    .line 3164
    new-instance v1, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$AdHolder;

    invoke-direct {v1, p2}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$AdHolder;-><init>(Landroid/view/View;)V

    .line 3165
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getAdvert()Lcom/ushaqi/zhuishushenqi/model/Advert;

    move-result-object v0

    .line 3166
    iget-object v2, v1, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$AdHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Advert;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3167
    iget-object v2, v1, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$AdHolder;->desc:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Advert;->getDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3168
    iget-object v2, v1, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$AdHolder;->flag:Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Advert;->getFlagType()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;->setType(I)V

    .line 3169
    iget-object v2, v1, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$AdHolder;->cover:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Advert;->getFullImg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageUrl(Ljava/lang/String;)V

    .line 3170
    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$AdHolder;->cover:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    invoke-virtual {v1, v3}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setDrawingCacheEnabled(Z)V

    .line 3172
    invoke-static {v0, p2}, Lcom/ushaqi/zhuishushenqi/util/adutil/n;->a(Lcom/ushaqi/zhuishushenqi/model/Advert;Landroid/view/View;)V

    goto/16 :goto_1

    .line 3205
    :pswitch_a
    new-instance v3, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$TxtHolder;

    invoke-direct {v3, p2}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$TxtHolder;-><init>(Landroid/view/View;)V

    .line 3206
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getTxt()Lcom/ushaqi/zhuishushenqi/db/BookFile;

    move-result-object v0

    .line 3207
    iget-object v4, v3, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$TxtHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookFile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3208
    iget-object v4, v3, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$TxtHolder;->desc:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u9605\u8bfb\u8fdb\u5ea6 : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookFile;->getReadableProgress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3209
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookFile;->isTop()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3210
    :goto_5
    iget-object v0, v3, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$TxtHolder;->top:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3211
    iget-object v0, v3, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$TxtHolder;->check:Landroid/widget/CheckBox;

    invoke-direct {p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->a(ILandroid/widget/CheckBox;)V

    goto/16 :goto_1

    :cond_11
    move v1, v2

    .line 3209
    goto :goto_5

    .line 97
    :pswitch_b
    iget-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->d:Z

    if-nez v2, :cond_1

    .line 4153
    new-instance v2, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$FeedHolder;

    invoke-direct {v2, p2}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$FeedHolder;-><init>(Landroid/view/View;)V

    .line 4154
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getBookFeed()Lcom/ushaqi/zhuishushenqi/model/BookFeed;

    move-result-object v0

    .line 4155
    iget-object v3, v2, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$FeedHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookFeed;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4156
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookFeed;->isFat()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4157
    iget-object v0, v2, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$FeedHolder;->flag:Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;->setType(I)V

    goto/16 :goto_1

    .line 4159
    :cond_12
    iget-object v0, v2, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$FeedHolder;->flag:Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;->setType(I)V

    goto/16 :goto_1

    .line 5137
    :pswitch_c
    new-instance v3, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$AlbumHolder;

    invoke-direct {v3, p2}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$AlbumHolder;-><init>(Landroid/view/View;)V

    .line 5138
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getAlbum()Lcom/ushaqi/zhuishushenqi/db/AudioRecord;

    move-result-object v0

    .line 5139
    iget-object v4, v3, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$AlbumHolder;->cover:Lcom/ushaqi/zhuishushenqi/widget/CoverView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->getImgUrl()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f020106

    invoke-virtual {v4, v5, v6}, Lcom/ushaqi/zhuishushenqi/widget/CoverView;->setImageUrl(Ljava/lang/String;I)V

    .line 5140
    iget-object v4, v3, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$AlbumHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5141
    iget-object v4, v3, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$AlbumHolder;->desc:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->getLastUpdate()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/ushaqi/zhuishushenqi/util/t;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\t\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->getDesc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5142
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->isUpdateReaded()Z

    move-result v4

    if-nez v4, :cond_13

    iget-boolean v4, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->d:Z

    if-eqz v4, :cond_14

    .line 5143
    :cond_13
    iget-object v4, v3, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$AlbumHolder;->flag:Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;

    invoke-virtual {v4, v1}, Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;->setType(I)V

    .line 5147
    :goto_6
    iget-object v4, v3, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$AlbumHolder;->check:Landroid/widget/CheckBox;

    invoke-direct {p0, p1, v4}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->a(ILandroid/widget/CheckBox;)V

    .line 5149
    iget-object v3, v3, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$AlbumHolder;->top:Landroid/view/View;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->isTop()Z

    move-result v0

    if-eqz v0, :cond_15

    :goto_7
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 5145
    :cond_14
    iget-object v4, v3, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$AlbumHolder;->flag:Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;

    invoke-virtual {v4, v8}, Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;->setType(I)V

    goto :goto_6

    :cond_15
    move v1, v2

    .line 5149
    goto :goto_7

    .line 1386
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 84
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 1408
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 430
    const/4 v0, 0x5

    return v0
.end method
