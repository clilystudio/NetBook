.class public final Lcom/activeandroid/query/From;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/activeandroid/query/Sqlable;


# instance fields
.field private mAlias:Ljava/lang/String;

.field private mArguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupBy:Ljava/lang/String;

.field private mHaving:Ljava/lang/String;

.field private mJoins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/activeandroid/query/Join;",
            ">;"
        }
    .end annotation
.end field

.field private mLimit:Ljava/lang/String;

.field private mOffset:Ljava/lang/String;

.field private mOrderBy:Ljava/lang/String;

.field private mQueryBase:Lcom/activeandroid/query/Sqlable;

.field private mType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/activeandroid/Model;",
            ">;"
        }
    .end annotation
.end field

.field private final mWhere:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/activeandroid/query/Sqlable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/activeandroid/Model;",
            ">;",
            "Lcom/activeandroid/query/Sqlable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/activeandroid/query/From;->mWhere:Ljava/lang/StringBuilder;

    .line 47
    iput-object p1, p0, Lcom/activeandroid/query/From;->mType:Ljava/lang/Class;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/activeandroid/query/From;->mJoins:Ljava/util/List;

    .line 49
    iput-object p2, p0, Lcom/activeandroid/query/From;->mQueryBase:Lcom/activeandroid/query/Sqlable;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/activeandroid/query/From;->mJoins:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/activeandroid/query/From;->mArguments:Ljava/util/List;

    .line 53
    return-void
.end method

.method private addFrom(Ljava/lang/StringBuilder;)V
    .locals 2

    .prologue
    .line 168
    const-string v0, "FROM "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget-object v0, p0, Lcom/activeandroid/query/From;->mType:Ljava/lang/Class;

    invoke-static {v0}, Lcom/activeandroid/Cache;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget-object v0, p0, Lcom/activeandroid/query/From;->mAlias:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 172
    const-string v0, "AS "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    iget-object v0, p0, Lcom/activeandroid/query/From;->mAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_0
    return-void
.end method

.method private addGroupBy(Ljava/lang/StringBuilder;)V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/activeandroid/query/From;->mGroupBy:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 194
    const-string v0, "GROUP BY "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget-object v0, p0, Lcom/activeandroid/query/From;->mGroupBy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    :cond_0
    return-void
.end method

.method private addHaving(Ljava/lang/StringBuilder;)V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/activeandroid/query/From;->mHaving:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 202
    const-string v0, "HAVING "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget-object v0, p0, Lcom/activeandroid/query/From;->mHaving:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_0
    return-void
.end method

.method private addJoins(Ljava/lang/StringBuilder;)V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/activeandroid/query/From;->mJoins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/activeandroid/query/Join;

    .line 180
    invoke-virtual {v0}, Lcom/activeandroid/query/Join;->toSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 182
    :cond_0
    return-void
.end method

.method private addLimit(Ljava/lang/StringBuilder;)V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/activeandroid/query/From;->mLimit:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 218
    const-string v0, "LIMIT "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    iget-object v0, p0, Lcom/activeandroid/query/From;->mLimit:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    :cond_0
    return-void
.end method

.method private addOffset(Ljava/lang/StringBuilder;)V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/activeandroid/query/From;->mOffset:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 226
    const-string v0, "OFFSET "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    iget-object v0, p0, Lcom/activeandroid/query/From;->mOffset:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    :cond_0
    return-void
.end method

.method private addOrderBy(Ljava/lang/StringBuilder;)V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/activeandroid/query/From;->mOrderBy:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 210
    const-string v0, "ORDER BY "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    iget-object v0, p0, Lcom/activeandroid/query/From;->mOrderBy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    :cond_0
    return-void
.end method

.method private addWhere(Ljava/lang/StringBuilder;)V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/activeandroid/query/From;->mWhere:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 186
    const-string v0, "WHERE "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    iget-object v0, p0, Lcom/activeandroid/query/From;->mWhere:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 188
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :cond_0
    return-void
.end method

.method private sqlString(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 234
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-static {}, Lcom/activeandroid/util/Log;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->getArguments()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/activeandroid/util/Log;->v(Ljava/lang/String;)I

    .line 242
    :cond_0
    return-object v0
.end method


# virtual methods
.method final addArguments([Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 159
    array-length v4, p1

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v0, p1, v3

    .line 160
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v5, v6, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/lang/Boolean;

    if-ne v5, v6, :cond_1

    .line 161
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 163
    :cond_1
    iget-object v5, p0, Lcom/activeandroid/query/From;->mArguments:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 161
    goto :goto_1

    .line 165
    :cond_3
    return-void
.end method

.method public final and(Ljava/lang/String;)Lcom/activeandroid/query/From;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    return-object v0
.end method

.method public final varargs and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    return-object v0
.end method

.method public final as(Ljava/lang/String;)Lcom/activeandroid/query/From;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/activeandroid/query/From;->mAlias:Ljava/lang/String;

    .line 57
    return-object p0
.end method

.method public final count()I
    .locals 2

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/activeandroid/query/From;->toCountSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->getArguments()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/activeandroid/util/SQLiteUtils;->intQuery(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final crossJoin(Ljava/lang/Class;)Lcom/activeandroid/query/Join;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/activeandroid/Model;",
            ">;)",
            "Lcom/activeandroid/query/Join;"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Lcom/activeandroid/query/Join;

    sget-object v1, Lcom/activeandroid/query/Join$JoinType;->CROSS:Lcom/activeandroid/query/Join$JoinType;

    invoke-direct {v0, p0, p1, v1}, Lcom/activeandroid/query/Join;-><init>(Lcom/activeandroid/query/From;Ljava/lang/Class;Lcom/activeandroid/query/Join$JoinType;)V

    .line 86
    iget-object v1, p0, Lcom/activeandroid/query/From;->mJoins:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    return-object v0
.end method

.method public final execute()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/activeandroid/Model;",
            ">()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 297
    iget-object v1, p0, Lcom/activeandroid/query/From;->mQueryBase:Lcom/activeandroid/query/Sqlable;

    instance-of v1, v1, Lcom/activeandroid/query/Select;

    if-eqz v1, :cond_0

    .line 298
    iget-object v0, p0, Lcom/activeandroid/query/From;->mType:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->toSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->getArguments()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/activeandroid/util/SQLiteUtils;->rawQuery(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 303
    :goto_0
    return-object v0

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/activeandroid/query/From;->toSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->getArguments()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/activeandroid/util/SQLiteUtils;->execSql(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/activeandroid/query/From;->mType:Ljava/lang/Class;

    invoke-static {v2, v0}, Lcom/activeandroid/content/ContentProvider;->createUri(Ljava/lang/Class;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public final executeSingle()Lcom/activeandroid/Model;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/activeandroid/Model;",
            ">()TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 309
    iget-object v0, p0, Lcom/activeandroid/query/From;->mQueryBase:Lcom/activeandroid/query/Sqlable;

    instance-of v0, v0, Lcom/activeandroid/query/Select;

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p0, v1}, Lcom/activeandroid/query/From;->limit(I)Lcom/activeandroid/query/From;

    .line 311
    iget-object v0, p0, Lcom/activeandroid/query/From;->mType:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->toSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->getArguments()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/activeandroid/util/SQLiteUtils;->rawQuerySingle(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Lcom/activeandroid/Model;

    move-result-object v0

    .line 316
    :goto_0
    return-object v0

    .line 314
    :cond_0
    invoke-virtual {p0, v1}, Lcom/activeandroid/query/From;->limit(I)Lcom/activeandroid/query/From;

    .line 315
    iget-object v0, p0, Lcom/activeandroid/query/From;->mType:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->toSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->getArguments()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/activeandroid/util/SQLiteUtils;->rawQuerySingle(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Lcom/activeandroid/Model;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/Model;->delete()V

    .line 316
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final exists()Z
    .locals 2

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/activeandroid/query/From;->toExistsSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->getArguments()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/activeandroid/util/SQLiteUtils;->intQuery(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getArguments()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 337
    iget-object v0, p0, Lcom/activeandroid/query/From;->mArguments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 338
    new-array v2, v1, [Ljava/lang/String;

    .line 340
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 341
    iget-object v3, p0, Lcom/activeandroid/query/From;->mArguments:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 340
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 344
    :cond_0
    return-object v2
.end method

.method public final groupBy(Ljava/lang/String;)Lcom/activeandroid/query/From;
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/activeandroid/query/From;->mGroupBy:Ljava/lang/String;

    .line 127
    return-object p0
.end method

.method public final having(Ljava/lang/String;)Lcom/activeandroid/query/From;
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/activeandroid/query/From;->mHaving:Ljava/lang/String;

    .line 132
    return-object p0
.end method

.method public final innerJoin(Ljava/lang/Class;)Lcom/activeandroid/query/Join;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/activeandroid/Model;",
            ">;)",
            "Lcom/activeandroid/query/Join;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Lcom/activeandroid/query/Join;

    sget-object v1, Lcom/activeandroid/query/Join$JoinType;->INNER:Lcom/activeandroid/query/Join$JoinType;

    invoke-direct {v0, p0, p1, v1}, Lcom/activeandroid/query/Join;-><init>(Lcom/activeandroid/query/From;Ljava/lang/Class;Lcom/activeandroid/query/Join$JoinType;)V

    .line 80
    iget-object v1, p0, Lcom/activeandroid/query/From;->mJoins:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    return-object v0
.end method

.method public final join(Ljava/lang/Class;)Lcom/activeandroid/query/Join;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/activeandroid/Model;",
            ">;)",
            "Lcom/activeandroid/query/Join;"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lcom/activeandroid/query/Join;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/activeandroid/query/Join;-><init>(Lcom/activeandroid/query/From;Ljava/lang/Class;Lcom/activeandroid/query/Join$JoinType;)V

    .line 62
    iget-object v1, p0, Lcom/activeandroid/query/From;->mJoins:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    return-object v0
.end method

.method public final leftJoin(Ljava/lang/Class;)Lcom/activeandroid/query/Join;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/activeandroid/Model;",
            ">;)",
            "Lcom/activeandroid/query/Join;"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Lcom/activeandroid/query/Join;

    sget-object v1, Lcom/activeandroid/query/Join$JoinType;->LEFT:Lcom/activeandroid/query/Join$JoinType;

    invoke-direct {v0, p0, p1, v1}, Lcom/activeandroid/query/Join;-><init>(Lcom/activeandroid/query/From;Ljava/lang/Class;Lcom/activeandroid/query/Join$JoinType;)V

    .line 68
    iget-object v1, p0, Lcom/activeandroid/query/From;->mJoins:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    return-object v0
.end method

.method public final limit(I)Lcom/activeandroid/query/From;
    .locals 1

    .prologue
    .line 141
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/activeandroid/query/From;->limit(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    return-object v0
.end method

.method public final limit(Ljava/lang/String;)Lcom/activeandroid/query/From;
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/activeandroid/query/From;->mLimit:Ljava/lang/String;

    .line 146
    return-object p0
.end method

.method public final offset(I)Lcom/activeandroid/query/From;
    .locals 1

    .prologue
    .line 150
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/activeandroid/query/From;->offset(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    return-object v0
.end method

.method public final offset(Ljava/lang/String;)Lcom/activeandroid/query/From;
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/activeandroid/query/From;->mOffset:Ljava/lang/String;

    .line 155
    return-object p0
.end method

.method public final or(Ljava/lang/String;)Lcom/activeandroid/query/From;
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/activeandroid/query/From;->mWhere:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/activeandroid/query/From;->mWhere:Ljava/lang/StringBuilder;

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/activeandroid/query/From;->mWhere:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    return-object p0
.end method

.method public final varargs or(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/activeandroid/query/From;->or(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/activeandroid/query/From;->addArguments([Ljava/lang/Object;)V

    .line 122
    return-object p0
.end method

.method public final orderBy(Ljava/lang/String;)Lcom/activeandroid/query/From;
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/activeandroid/query/From;->mOrderBy:Ljava/lang/String;

    .line 137
    return-object p0
.end method

.method public final outerJoin(Ljava/lang/Class;)Lcom/activeandroid/query/Join;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/activeandroid/Model;",
            ">;)",
            "Lcom/activeandroid/query/Join;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lcom/activeandroid/query/Join;

    sget-object v1, Lcom/activeandroid/query/Join$JoinType;->OUTER:Lcom/activeandroid/query/Join$JoinType;

    invoke-direct {v0, p0, p1, v1}, Lcom/activeandroid/query/Join;-><init>(Lcom/activeandroid/query/From;Ljava/lang/Class;Lcom/activeandroid/query/Join$JoinType;)V

    .line 74
    iget-object v1, p0, Lcom/activeandroid/query/From;->mJoins:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    return-object v0
.end method

.method public final toCountSql()Ljava/lang/String;
    .locals 2

    .prologue
    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    const-string v1, "SELECT COUNT(*) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addFrom(Ljava/lang/StringBuilder;)V

    .line 286
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addJoins(Ljava/lang/StringBuilder;)V

    .line 287
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addWhere(Ljava/lang/StringBuilder;)V

    .line 288
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addGroupBy(Ljava/lang/StringBuilder;)V

    .line 289
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addHaving(Ljava/lang/StringBuilder;)V

    .line 290
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addLimit(Ljava/lang/StringBuilder;)V

    .line 291
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addOffset(Ljava/lang/StringBuilder;)V

    .line 293
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->sqlString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toExistsSql()Ljava/lang/String;
    .locals 2

    .prologue
    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    const-string v1, "SELECT EXISTS(SELECT 1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addFrom(Ljava/lang/StringBuilder;)V

    .line 268
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addJoins(Ljava/lang/StringBuilder;)V

    .line 269
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addWhere(Ljava/lang/StringBuilder;)V

    .line 270
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addGroupBy(Ljava/lang/StringBuilder;)V

    .line 271
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addHaving(Ljava/lang/StringBuilder;)V

    .line 272
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addLimit(Ljava/lang/StringBuilder;)V

    .line 273
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addOffset(Ljava/lang/StringBuilder;)V

    .line 275
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->sqlString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toSql()Ljava/lang/String;
    .locals 2

    .prologue
    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    iget-object v1, p0, Lcom/activeandroid/query/From;->mQueryBase:Lcom/activeandroid/query/Sqlable;

    invoke-interface {v1}, Lcom/activeandroid/query/Sqlable;->toSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addFrom(Ljava/lang/StringBuilder;)V

    .line 251
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addJoins(Ljava/lang/StringBuilder;)V

    .line 252
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addWhere(Ljava/lang/StringBuilder;)V

    .line 253
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addGroupBy(Ljava/lang/StringBuilder;)V

    .line 254
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addHaving(Ljava/lang/StringBuilder;)V

    .line 255
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addOrderBy(Ljava/lang/StringBuilder;)V

    .line 256
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addLimit(Ljava/lang/StringBuilder;)V

    .line 257
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addOffset(Ljava/lang/StringBuilder;)V

    .line 259
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->sqlString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final where(Ljava/lang/String;)Lcom/activeandroid/query/From;
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/activeandroid/query/From;->mWhere:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/activeandroid/query/From;->mWhere:Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/activeandroid/query/From;->mWhere:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    return-object p0
.end method

.method public final varargs where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/activeandroid/query/From;->addArguments([Ljava/lang/Object;)V

    .line 101
    return-object p0
.end method
