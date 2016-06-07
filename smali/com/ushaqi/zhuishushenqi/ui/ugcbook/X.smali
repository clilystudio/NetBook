.class public final Lcom/ushaqi/zhuishushenqi/ui/ugcbook/X;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;

.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;Landroid/view/LayoutInflater;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/X;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/X;->d:Z

    .line 172
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/X;->b:Landroid/view/LayoutInflater;

    .line 173
    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/X;->c:Ljava/util/List;

    .line 174
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/X;)Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/X;->d:Z

    return v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/X;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/X;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 188
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 194
    if-nez p2, :cond_0

    .line 195
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Z;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Z;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/X;)V

    .line 196
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/X;->b:Landroid/view/LayoutInflater;

    const v3, 0x7f030116

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 197
    const v0, 0x7f0c0048

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Z;->a:Landroid/widget/TextView;

    .line 198
    const v0, 0x7f0c0269

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Z;->b:Landroid/widget/TextView;

    .line 199
    const v0, 0x7f0c02e4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/CoverView;

    iput-object v0, v1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Z;->c:Lcom/ushaqi/zhuishushenqi/widget/CoverView;

    .line 200
    const v0, 0x7f0c0024

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Z;->d:Landroid/widget/CheckBox;

    .line 201
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 205
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/X;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    .line 206
    iget-object v3, v1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Z;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v3, v1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Z;->c:Lcom/ushaqi/zhuishushenqi/widget/CoverView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getFullCover()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f020106

    invoke-virtual {v3, v4, v5}, Lcom/ushaqi/zhuishushenqi/widget/CoverView;->setImageUrl(Ljava/lang/String;I)V

    .line 208
    iget-object v3, v1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Z;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->buildDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Z;->d:Landroid/widget/CheckBox;

    .line 1223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/X;->d:Z

    .line 1224
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/X;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;)[Z

    move-result-object v0

    array-length v0, v0

    if-gt v0, p1, :cond_2

    .line 1225
    add-int/lit8 v0, p1, 0x1

    new-array v3, v0, [Z

    move v0, v2

    .line 1226
    :goto_1
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/X;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;

    invoke-static {v4}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;)[Z

    move-result-object v4

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 1227
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/X;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;

    invoke-static {v4}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;)[Z

    move-result-object v4

    aget-boolean v4, v4, v0

    aput-boolean v4, v3, v0

    .line 1226
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 203
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Z;

    move-object v1, v0

    goto :goto_0

    .line 1229
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/X;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;

    invoke-static {v0, v3}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;[Z)[Z

    .line 1231
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/X;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;)[Z

    move-result-object v0

    aget-boolean v0, v0, p1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1232
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/X;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;

    invoke-static {v0, p1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;I)V

    .line 1233
    iput-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/X;->d:Z

    .line 1234
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Y;

    invoke-direct {v0, p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Y;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/X;I)V

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 210
    return-object p2
.end method
