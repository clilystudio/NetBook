.class public Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;
.super Landroid/widget/EditText;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Lcom/ushaqi/zhuishushenqi/widget/ax;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;->a()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;->a()V

    .line 20
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/aw;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/widget/aw;-><init>(Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;)V

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;)Z
    .locals 1

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;->a:Z

    return v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;Z)Z
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;->a:Z

    return v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;)Lcom/ushaqi/zhuishushenqi/widget/ax;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;->b:Lcom/ushaqi/zhuishushenqi/widget/ax;

    return-object v0
.end method


# virtual methods
.method public setOnUserInputListener(Lcom/ushaqi/zhuishushenqi/widget/ax;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;->b:Lcom/ushaqi/zhuishushenqi/widget/ax;

    .line 62
    return-void
.end method

.method public setTextByCode(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 28
    if-eqz p1, :cond_0

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;->a:Z

    .line 30
    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;->setText(Ljava/lang/CharSequence;)V

    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;->setSelection(I)V

    .line 33
    :cond_0
    return-void
.end method
