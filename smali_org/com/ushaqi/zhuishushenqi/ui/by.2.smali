.class public final Lcom/ushaqi/zhuishushenqi/ui/by;
.super Lcom/ushaqi/zhuishushenqi/ui/be;
.source "SourceFile"


# instance fields
.field private c:Lcom/ushaqi/zhuishushenqi/util/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/ui/be;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/ui/bz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/bz;

    .line 41
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/bz;->c()I

    move-result v3

    .line 42
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/bz;->b()I

    move-result v4

    sub-int/2addr v3, v4

    .line 43
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/bz;->a()Lcom/ushaqi/zhuishushenqi/model/InsideLink;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/InsideLink;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    .line 44
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/bz;->b()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/ui/bz;->a(I)V

    .line 45
    add-int/2addr v1, v3

    .line 46
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/bz;->c()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/ui/bz;->b(I)V

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/by;->b:Landroid/text/SpannableString;

    invoke-virtual {v0}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\[\\[.+? (.+?)\\]\\]"

    const-string v2, "$1"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/by;->b:Landroid/text/SpannableString;

    .line 52
    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/ui/bz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/bz;

    .line 71
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/by;->b:Landroid/text/SpannableString;

    new-instance v3, Lcom/ushaqi/zhuishushenqi/b/a;

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/by;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/bz;->a()Lcom/ushaqi/zhuishushenqi/model/InsideLink;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/ushaqi/zhuishushenqi/b/a;-><init>(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/InsideLink;)V

    .line 72
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/bz;->b()I

    move-result v4

    .line 73
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/bz;->c()I

    move-result v0

    const/16 v5, 0x11

    .line 71
    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 76
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 29
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/a/a;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/util/a/a;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/by;->c:Lcom/ushaqi/zhuishushenqi/util/a/a;

    .line 1055
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1056
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/by;->b:Landroid/text/SpannableString;

    invoke-virtual {v1}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1057
    const-string v2, "\\[\\[.+?\\]\\]"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1058
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1059
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/bz;

    invoke-direct {v2, p0, v4}, Lcom/ushaqi/zhuishushenqi/ui/bz;-><init>(Lcom/ushaqi/zhuishushenqi/ui/by;B)V

    .line 1060
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/util/a/a;->a(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/InsideLink;

    move-result-object v3

    .line 1061
    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/bz;->a(Lcom/ushaqi/zhuishushenqi/model/InsideLink;)V

    .line 1062
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->start(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/bz;->a(I)V

    .line 1063
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->end(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/bz;->b(I)V

    .line 1064
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 31
    :cond_0
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/by;->a(Ljava/util/List;)V

    .line 32
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 33
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/by;->b(Ljava/util/List;)V

    .line 35
    :cond_1
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/be;->a()V

    .line 36
    return-void
.end method
