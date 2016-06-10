.class public Lcom/ximalaya/ting/android/opensdk/model/ranks/Rank;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private categoryId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "category_id"
    .end annotation
.end field

.field private coverUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cover_url"
    .end annotation
.end field

.field private rankContentType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rank_content_type"
    .end annotation
.end field

.field private rankFirstItemId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rank_first_item_id"
    .end annotation
.end field

.field private rankFirstItemTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rank_first_item_title"
    .end annotation
.end field

.field private rankItemList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "index_rank_items"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/ranks/RankItem;",
            ">;"
        }
    .end annotation
.end field

.field private rankItemNum:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rank_item_num"
    .end annotation
.end field

.field private rankKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rank_key"
    .end annotation
.end field

.field private rankOrderNum:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rank_order_num"
    .end annotation
.end field

.field private rankPeriod:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rank_period"
    .end annotation
.end field

.field private rankPeriodType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rank_period_type"
    .end annotation
.end field

.field private rankSubTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rank_sub_title"
    .end annotation
.end field

.field private rankTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rank_title"
    .end annotation
.end field

.field private rankType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rank_type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategoryId()J
    .locals 2

    .prologue
    .line 153
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/Rank;->categoryId:J

    return-wide v0
.end method

.method public getCoverUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/Rank;->coverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRankContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/Rank;->rankContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getRankFirstItemId()J
    .locals 2

    .prologue
    .line 173
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/Rank;->rankFirstItemId:J

    return-wide v0
.end method

.method public getRankFirstItemTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/Rank;->rankFirstItemTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getRankItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/ranks/RankItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/Rank;->rankItemList:Ljava/util/List;

    return-object v0
.end method

.method public getRankItemNum()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/Rank;->rankItemNum:I

    return v0
.end method

.method public getRankKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/Rank;->rankKey:Ljava/lang/String;

    return-object v0
.end method

.method public getRankOrderNum()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/Rank;->rankOrderNum:I

    return v0
.end method

.method public getRankPeriod()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/Rank;->rankPeriod:I

    return v0
.end method

.method public getRankPeriodType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/Rank;->rankPeriodType:Ljava/lang/String;

    return-object v0
.end method

.method public getRankSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/Rank;->rankSubTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getRankTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/Rank;->rankTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getRankType()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/Rank;->rankType:I

    return v0
.end method

.method public setCategoryId(J)V
    .locals 1

    .prologue
    .line 158
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/Rank;->categoryId:J

    .line 159
    return-void
.end method

.method public setCoverUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/Rank;->coverUrl:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setRankContentType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/Rank;->rankContentType:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setRankFirstItemId(J)V
    .locals 1

    .prologue
    .line 178
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/Rank;->rankFirstItemId:J

    .line 179
    return-void
.end method

.method public setRankFirstItemTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/Rank;->rankFirstItemTitle:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setRankItemList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/ranks/RankItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/Rank;->rankItemList:Ljava/util/List;

    .line 199
    return-void
.end method

.method public setRankItemNum(I)V
    .locals 0

    .prologue
    .line 128
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/Rank;->rankItemNum:I

    .line 129
    return-void
.end method

.method public setRankKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/Rank;->rankKey:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setRankOrderNum(I)V
    .locals 0

    .prologue
    .line 138
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/Rank;->rankOrderNum:I

    .line 139
    return-void
.end method

.method public setRankPeriod(I)V
    .locals 0

    .prologue
    .line 108
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/Rank;->rankPeriod:I

    .line 109
    return-void
.end method

.method public setRankPeriodType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/Rank;->rankPeriodType:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setRankSubTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/Rank;->rankSubTitle:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setRankTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/Rank;->rankTitle:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setRankType(I)V
    .locals 0

    .prologue
    .line 88
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/Rank;->rankType:I

    .line 89
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Rank [rankKey="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/Rank;->rankKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rankTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/Rank;->rankTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 205
    const-string v1, ", rankType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/Rank;->rankType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rankSubTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/Rank;->rankSubTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 206
    const-string v1, ", rankPeriod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/Rank;->rankPeriod:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rankPeriodType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/Rank;->rankPeriodType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rankItemNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/Rank;->rankItemNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 208
    const-string v1, ", rankOrderNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/Rank;->rankOrderNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", coverUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/Rank;->coverUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 209
    const-string v1, ", categoryId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/Rank;->categoryId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rankCOntentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/Rank;->rankContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rankFirstItemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/Rank;->rankFirstItemId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 211
    const-string v1, ", rankFirstItemTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/Rank;->rankFirstItemTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 212
    const-string v1, ", rankItemList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/Rank;->rankItemList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
