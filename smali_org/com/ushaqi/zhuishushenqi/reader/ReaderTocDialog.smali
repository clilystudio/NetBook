.class public Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/reader/cf;

.field private b:Landroid/widget/ListView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/ushaqi/zhuishushenqi/reader/Reader;

.field private e:Landroid/content/DialogInterface$OnClickListener;

.field private f:Landroid/content/DialogInterface$OnCancelListener;

.field private g:Landroid/content/DialogInterface$OnDismissListener;

.field private h:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 149
    return-void
.end method

.method private a(I)I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->d:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->f()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->i:I

    return v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;I)I
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->a(I)I

    move-result v0

    return v0
.end method

.method public static a()Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;-><init>()V

    return-object v0
.end method

.method private a(Lcom/ushaqi/zhuishushenqi/model/ChapterLink;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 206
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->isVip()Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    :goto_0
    return v0

    .line 211
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->getLink()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 212
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->d:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->e()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 214
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;Lcom/ushaqi/zhuishushenqi/model/ChapterLink;)Z
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->a(Lcom/ushaqi/zhuishushenqi/model/ChapterLink;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;)Lcom/ushaqi/zhuishushenqi/reader/Reader;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->d:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    return-object v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->h:Ljava/util/LinkedList;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->f:Landroid/content/DialogInterface$OnCancelListener;

    .line 220
    return-void
.end method

.method public final a(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->e:Landroid/content/DialogInterface$OnClickListener;

    .line 228
    return-void
.end method

.method public final a(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->g:Landroid/content/DialogInterface$OnDismissListener;

    .line 224
    return-void
.end method

.method public final a(Lcom/ushaqi/zhuishushenqi/reader/Reader;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->d:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    .line 106
    return-void
.end method

.method public final a(Lcom/ushaqi/zhuishushenqi/reader/Reader;Ljava/util/LinkedList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ushaqi/zhuishushenqi/reader/Reader;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->d:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    .line 110
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->h:Ljava/util/LinkedList;

    .line 111
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->f:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->f:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 125
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 126
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1511
    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->a(Landroid/content/Context;)Z

    move-result v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    const v0, 0x7f070162

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->i:I

    .line 59
    :goto_0
    const/4 v0, 0x1

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->i:I

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->setStyle(II)V

    .line 60
    return-void

    .line 57
    :cond_0
    const v0, 0x7f070161

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->i:I

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 65
    const v0, 0x7f0300a0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 67
    const v0, 0x7f0c022b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->c:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f0c022d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->b:Landroid/widget/ListView;

    .line 69
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/cf;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget v4, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->i:I

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/ushaqi/zhuishushenqi/reader/cf;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->a:Lcom/ushaqi/zhuishushenqi/reader/cf;

    .line 70
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->b:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->b:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->a:Lcom/ushaqi/zhuishushenqi/reader/cf;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->b:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFastScrollAlwaysVisible(Z)V

    .line 76
    :cond_0
    return-object v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->g:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->g:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 133
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 134
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->e:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->e:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-direct {p0, p3}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->a(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 118
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 81
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onResume()V

    .line 83
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->a:Lcom/ushaqi/zhuishushenqi/reader/cf;

    .line 2141
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->d:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->h()[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    move-result-object v3

    .line 3025
    if-eqz v3, :cond_0

    .line 3028
    array-length v1, v3

    .line 3032
    if-eqz v3, :cond_0

    .line 3035
    const/4 v0, 0x0

    .line 3036
    array-length v4, v3

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 3038
    :goto_0
    if-le v1, v0, :cond_0

    .line 3039
    aget-object v4, v3, v1

    .line 3040
    aget-object v5, v3, v0

    aput-object v5, v3, v1

    .line 3041
    aput-object v4, v3, v0

    .line 3042
    add-int/lit8 v1, v1, -0x1

    .line 3043
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/reader/cf;->a([Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 90
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->d:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->dismissAllowingStateLoss()V

    .line 102
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->d:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->d:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->k()I

    move-result v0

    .line 97
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 98
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->b:Landroid/widget/ListView;

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method
