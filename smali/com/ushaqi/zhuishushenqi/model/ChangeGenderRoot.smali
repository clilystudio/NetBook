.class public Lcom/ushaqi/zhuishushenqi/model/ChangeGenderRoot;
.super Lcom/ushaqi/zhuishushenqi/model/Root;
.source "SourceFile"


# instance fields
.field private codeMap:[[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/model/Root;-><init>()V

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "TOKEN_INVALID"

    aput-object v2, v1, v3

    const-string v2, "\u8eab\u4efd\u8fc7\u671f,\u8bf7\u91cd\u65b0\u767b\u5f55!"

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "INVALID_GENDER"

    aput-object v2, v1, v3

    const-string v2, "\u6027\u522b\u4fe1\u606f\u9519\u8bef"

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CHANGED"

    aput-object v2, v1, v3

    const-string v2, "\u5df2\u7ecf\u4fee\u6539\u8fc7\u4e86!"

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ChangeGenderRoot;->codeMap:[[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/ChangeGenderRoot;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    const-string v0, ""

    .line 27
    :goto_0
    return-object v0

    .line 21
    :cond_0
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/model/ChangeGenderRoot;->codeMap:[[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 22
    aget-object v5, v4, v1

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/ChangeGenderRoot;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 23
    const/4 v0, 0x1

    aget-object v0, v4, v0

    goto :goto_0

    .line 21
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 27
    :cond_2
    const-string v0, "\u66f4\u65b0\u5931\u8d25"

    goto :goto_0
.end method
