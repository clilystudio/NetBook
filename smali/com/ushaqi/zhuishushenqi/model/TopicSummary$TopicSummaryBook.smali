.class public Lcom/ushaqi/zhuishushenqi/model/TopicSummary$TopicSummaryBook;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _id:Ljava/lang/String;

.field private postCount:I

.field final synthetic this$0:Lcom/ushaqi/zhuishushenqi/model/TopicSummary;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/model/TopicSummary;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/TopicSummary$TopicSummaryBook;->this$0:Lcom/ushaqi/zhuishushenqi/model/TopicSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPostCount()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/TopicSummary$TopicSummaryBook;->postCount:I

    return v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/TopicSummary$TopicSummaryBook;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public setPostCount(I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/TopicSummary$TopicSummaryBook;->postCount:I

    .line 59
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/TopicSummary$TopicSummaryBook;->_id:Ljava/lang/String;

    .line 51
    return-void
.end method
