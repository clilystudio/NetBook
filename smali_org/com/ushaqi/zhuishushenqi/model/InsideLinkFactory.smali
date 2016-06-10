.class public Lcom/ushaqi/zhuishushenqi/model/InsideLinkFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/InsideLink;
    .locals 2

    .prologue
    .line 9
    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/InsideLink;

    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;->build(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/model/InsideLink;-><init>(Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;Ljava/lang/String;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/InsideLink;
    .locals 2

    .prologue
    .line 13
    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/InsideLink;

    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;->build(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/ushaqi/zhuishushenqi/model/InsideLink;-><init>(Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
