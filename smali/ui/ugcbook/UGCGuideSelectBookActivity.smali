.class public Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/X;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;",
            ">;"
        }
    .end annotation
.end field

.field private j:[Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    .line 167
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;)Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->e()Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;I)V
    .locals 7

    .prologue
    .line 34
    .line 1134
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->j:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_1

    .line 1135
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->i:Ljava/util/List;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->g:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/X;

    invoke-virtual {v1, p1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/X;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1136
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->i:Ljava/util/List;

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->g:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/X;

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/X;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1142
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1143
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->f:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u9009\u597d\u4e86("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->i:Ljava/util/List;

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

    :goto_1
    return-void

    .line 1139
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->g:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/X;

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/X;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    .line 1150
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1151
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->e()Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;

    move-result-object v3

    .line 1152
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->getBooks()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1153
    const/4 v2, 0x0

    .line 1154
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->getBooks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ushaqi/zhuishushenqi/model/BookSummary;

    .line 1155
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getBookId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1160
    :goto_2
    if-eqz v1, :cond_0

    .line 1161
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->setSelected(Z)V

    .line 1162
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->getBooks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1145
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->f:Landroid/widget/Button;

    const-string v1, "\u9009\u597d\u4e86"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    move-object v1, v2

    goto :goto_2
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;[Z)[Z
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->j:[Z

    return-object p1
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;)[Z
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->j:[Z

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 109
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->j:[Z

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->j:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    aput-boolean v0, v1, p1

    .line 110
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->g:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/X;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/X;->notifyDataSetChanged()V

    .line 111
    return-void

    .line 109
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 47
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f030061

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->setContentView(I)V

    .line 49
    const-string v0, "\u4e66\u67b6\u6dfb\u52a0"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->b(Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getAllNotDeleted()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->h:Ljava/util/List;

    .line 52
    const v0, 0x7f0c016a

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->a:Landroid/widget/ListView;

    .line 53
    const v0, 0x7f0c016c

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->e:Landroid/widget/Button;

    .line 54
    const v0, 0x7f0c016d

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->f:Landroid/widget/Button;

    .line 56
    const v0, 0x7f0c00ec

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->b:Landroid/view/View;

    .line 57
    const v0, 0x7f0c016b

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->c:Landroid/view/View;

    .line 58
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 106
    :goto_0
    return-void

    .line 1114
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->i:Ljava/util/List;

    .line 1115
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->j:[Z

    .line 1116
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->e()Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;

    move-result-object v0

    .line 1117
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->getBooks()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1118
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->getBooks()Ljava/util/List;

    move-result-object v0

    .line 1119
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1120
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;

    .line 1121
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move v1, v2

    .line 1123
    :goto_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 1124
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    .line 1125
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getBookId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1126
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->i:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1127
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->j:[Z

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    .line 1123
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 66
    :cond_3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 67
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/X;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->h:Ljava/util/List;

    invoke-direct {v1, p0, v0, v3}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/X;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;Landroid/view/LayoutInflater;Ljava/util/List;)V

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->g:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/X;

    .line 68
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->a:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->g:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/X;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 69
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->a:Landroid/widget/ListView;

    new-instance v3, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/U;

    invoke-direct {v3, p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/U;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 75
    const v1, 0x7f0300d8

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 78
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->e:Landroid/widget/Button;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/V;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/V;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->f:Landroid/widget/Button;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/W;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/W;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method
