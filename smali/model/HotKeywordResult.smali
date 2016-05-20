.class public Lcom/ushaqi/zhuishushenqi/model/HotKeywordResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private hotWords:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHotWords()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/HotKeywordResult;->hotWords:[Ljava/lang/String;

    return-object v0
.end method

.method public setHotWords([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/HotKeywordResult;->hotWords:[Ljava/lang/String;

    .line 15
    return-void
.end method
