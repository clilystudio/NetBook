.class public Lcom/ushaqi/zhuishushenqi/model/ChangeNickNameRoot;
.super Lcom/ushaqi/zhuishushenqi/model/CodeRoot;
.source "SourceFile"


# instance fields
.field private codeMap:[[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/model/CodeRoot;-><init>()V

    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "LV_NOT_ENOUGH"

    aput-object v2, v1, v4

    const-string v2, "\u7b49\u7ea7\u4e0d\u591f"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "TOO_LONG"

    aput-object v2, v1, v4

    const-string v2, "\u540d\u5b57\u592a\u957f"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "ILLEGAL_NICKNAME"

    aput-object v2, v1, v4

    const-string v2, "\u4e0d\u5408\u6cd5\u7684\u540d\u5b57"

    aput-object v2, v1, v5

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "TOO_OFTEN"

    aput-object v3, v2, v4

    const-string v3, "\u4fee\u6539\u95f4\u9694\u5c11\u4e8e30\u5929"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ChangeNickNameRoot;->codeMap:[[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/ChangeNickNameRoot;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    const-string v0, ""

    .line 28
    :goto_0
    return-object v0

    .line 22
    :cond_0
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/model/ChangeNickNameRoot;->codeMap:[[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 23
    aget-object v5, v4, v1

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/ChangeNickNameRoot;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 24
    const/4 v0, 0x1

    aget-object v0, v4, v0

    goto :goto_0

    .line 22
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 28
    :cond_2
    const-string v0, "\u66f4\u65b0\u5931\u8d25"

    goto :goto_0
.end method
