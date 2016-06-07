.class public final Lcom/activeandroid/util/SQLiteUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FOREIGN_KEYS_SUPPORTED:Z

.field private static final TYPE_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/activeandroid/util/SQLiteUtils$SQLiteType;",
            ">;"
        }
    .end annotation
.end field

.field private static sIndexGroupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sOnUniqueConflictsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/activeandroid/annotation/Column$ConflictAction;",
            ">;"
        }
    .end annotation
.end field

.field private static sUniqueGroupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/activeandroid/util/SQLiteUtils;->FOREIGN_KEYS_SUPPORTED:Z

    .line 61
    new-instance v0, Lcom/activeandroid/util/SQLiteUtils$1;

    invoke-direct {v0}, Lcom/activeandroid/util/SQLiteUtils$1;-><init>()V

    sput-object v0, Lcom/activeandroid/util/SQLiteUtils;->TYPE_MAP:Ljava/util/HashMap;

    return-void

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static createColumnDefinition(Lcom/activeandroid/TableInfo;Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 257
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 260
    invoke-virtual {p0, p1}, Lcom/activeandroid/TableInfo;->getColumnName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v4

    .line 261
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/activeandroid/Cache;->getParserForType(Ljava/lang/Class;)Lcom/activeandroid/serializer/TypeSerializer;

    move-result-object v2

    .line 262
    const-class v0, Lcom/activeandroid/annotation/Column;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/activeandroid/annotation/Column;

    .line 264
    if-eqz v2, :cond_9

    .line 265
    invoke-virtual {v2}, Lcom/activeandroid/serializer/TypeSerializer;->getSerializedType()Ljava/lang/Class;

    move-result-object v1

    move-object v2, v1

    .line 268
    :goto_0
    sget-object v1, Lcom/activeandroid/util/SQLiteUtils;->TYPE_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 269
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    sget-object v1, Lcom/activeandroid/util/SQLiteUtils;->TYPE_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    invoke-virtual {v1}, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    :cond_0
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 286
    invoke-virtual {p0}, Lcom/activeandroid/TableInfo;->getIdName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 287
    const-string v1, " PRIMARY KEY AUTOINCREMENT"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    :cond_1
    :goto_2
    sget-boolean v1, Lcom/activeandroid/util/SQLiteUtils;->FOREIGN_KEYS_SUPPORTED:Z

    if-eqz v1, :cond_2

    invoke-static {v2}, Lcom/activeandroid/util/ReflectionUtils;->isModel(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 307
    const-string v1, " REFERENCES "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-static {v2}, Lcom/activeandroid/Cache;->getTableInfo(Ljava/lang/Class;)Lcom/activeandroid/TableInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/activeandroid/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/activeandroid/TableInfo;->getIdName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    const-string v1, " ON DELETE "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-interface {v0}, Lcom/activeandroid/annotation/Column;->onDelete()Lcom/activeandroid/annotation/Column$ForeignKeyAction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/activeandroid/annotation/Column$ForeignKeyAction;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_"

    const-string v4, " "

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    const-string v1, " ON UPDATE "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-interface {v0}, Lcom/activeandroid/annotation/Column;->onUpdate()Lcom/activeandroid/annotation/Column$ForeignKeyAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/annotation/Column$ForeignKeyAction;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    :cond_2
    :goto_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 273
    :cond_3
    invoke-static {v2}, Lcom/activeandroid/util/ReflectionUtils;->isModel(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 274
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    sget-object v1, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->INTEGER:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    invoke-virtual {v1}, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 278
    :cond_4
    const-class v1, Ljava/lang/Enum;

    invoke-static {v2, v1}, Lcom/activeandroid/util/ReflectionUtils;->isSubclassOf(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    sget-object v1, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->TEXT:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    invoke-virtual {v1}, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 288
    :cond_5
    if-eqz v0, :cond_1

    .line 289
    invoke-interface {v0}, Lcom/activeandroid/annotation/Column;->length()I

    move-result v1

    if-ltz v1, :cond_6

    .line 290
    const-string v1, "("

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-interface {v0}, Lcom/activeandroid/annotation/Column;->length()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 292
    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    :cond_6
    invoke-interface {v0}, Lcom/activeandroid/annotation/Column;->notNull()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 296
    const-string v1, " NOT NULL ON CONFLICT "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-interface {v0}, Lcom/activeandroid/annotation/Column;->onNullConflict()Lcom/activeandroid/annotation/Column$ConflictAction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/activeandroid/annotation/Column$ConflictAction;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    :cond_7
    invoke-interface {v0}, Lcom/activeandroid/annotation/Column;->unique()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 301
    const-string v1, " UNIQUE ON CONFLICT "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-interface {v0}, Lcom/activeandroid/annotation/Column;->onUniqueConflict()Lcom/activeandroid/annotation/Column$ConflictAction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/activeandroid/annotation/Column$ConflictAction;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 317
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No type mapping for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/activeandroid/util/Log;->e(Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_9
    move-object v2, v1

    goto/16 :goto_0
.end method

.method public static createIndexColumnDefinition(Lcom/activeandroid/TableInfo;Ljava/lang/reflect/Field;)V
    .locals 7

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Lcom/activeandroid/TableInfo;->getColumnName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v2

    .line 212
    const-class v0, Lcom/activeandroid/annotation/Column;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/activeandroid/annotation/Column;

    .line 214
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mId"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    :cond_0
    return-void

    .line 218
    :cond_1
    invoke-interface {v0}, Lcom/activeandroid/annotation/Column;->index()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 219
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 220
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v3, Lcom/activeandroid/util/SQLiteUtils;->sIndexGroupMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_2
    invoke-interface {v0}, Lcom/activeandroid/annotation/Column;->indexGroups()[Ljava/lang/String;

    move-result-object v3

    .line 225
    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 226
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 229
    sget-object v0, Lcom/activeandroid/util/SQLiteUtils;->sIndexGroupMap:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 230
    if-nez v0, :cond_3

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 234
    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v6, Lcom/activeandroid/util/SQLiteUtils;->sIndexGroupMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static createIndexDefinition(Lcom/activeandroid/TableInfo;)[Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 190
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/activeandroid/util/SQLiteUtils;->sIndexGroupMap:Ljava/util/HashMap;

    .line 193
    invoke-virtual {p0}, Lcom/activeandroid/TableInfo;->getFields()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 194
    invoke-static {p0, v0}, Lcom/activeandroid/util/SQLiteUtils;->createIndexColumnDefinition(Lcom/activeandroid/TableInfo;Ljava/lang/reflect/Field;)V

    goto :goto_0

    .line 197
    :cond_0
    sget-object v0, Lcom/activeandroid/util/SQLiteUtils;->sIndexGroupMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    new-array v0, v7, [Ljava/lang/String;

    .line 207
    :goto_1
    return-object v0

    .line 201
    :cond_1
    sget-object v0, Lcom/activeandroid/util/SQLiteUtils;->sIndexGroupMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 202
    const-string v4, "CREATE INDEX IF NOT EXISTS %s on %s(%s);"

    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "index_"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/activeandroid/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "_"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v7

    const/4 v1, 0x1

    .line 204
    invoke-virtual {p0}, Lcom/activeandroid/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x2

    const-string v6, ", "

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v6, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 202
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 207
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_1
.end method

.method public static createTableDefinition(Lcom/activeandroid/TableInfo;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 240
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 242
    invoke-virtual {p0}, Lcom/activeandroid/TableInfo;->getFields()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 243
    invoke-static {p0, v0}, Lcom/activeandroid/util/SQLiteUtils;->createColumnDefinition(Lcom/activeandroid/TableInfo;Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 245
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 249
    :cond_1
    invoke-static {p0}, Lcom/activeandroid/util/SQLiteUtils;->createUniqueDefinition(Lcom/activeandroid/TableInfo;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 251
    const-string v0, "CREATE TABLE IF NOT EXISTS %s (%s);"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/activeandroid/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, ", "

    .line 252
    invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    .line 251
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createUniqueColumnDefinition(Lcom/activeandroid/TableInfo;Ljava/lang/reflect/Field;)V
    .locals 8

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Lcom/activeandroid/TableInfo;->getColumnName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v2

    .line 160
    const-class v0, Lcom/activeandroid/annotation/Column;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/activeandroid/annotation/Column;

    .line 162
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mId"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    :cond_0
    return-void

    .line 166
    :cond_1
    invoke-interface {v0}, Lcom/activeandroid/annotation/Column;->uniqueGroups()[Ljava/lang/String;

    move-result-object v3

    .line 167
    invoke-interface {v0}, Lcom/activeandroid/annotation/Column;->onUniqueConflicts()[Lcom/activeandroid/annotation/Column$ConflictAction;

    move-result-object v4

    .line 168
    array-length v0, v3

    array-length v1, v4

    if-ne v0, v1, :cond_0

    .line 171
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_0

    .line 172
    aget-object v5, v3, v1

    .line 173
    aget-object v6, v4, v1

    .line 175
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 178
    sget-object v0, Lcom/activeandroid/util/SQLiteUtils;->sUniqueGroupMap:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 179
    if-nez v0, :cond_2

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    sget-object v7, Lcom/activeandroid/util/SQLiteUtils;->sUniqueGroupMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/activeandroid/util/SQLiteUtils;->sOnUniqueConflictsMap:Ljava/util/HashMap;

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static createUniqueDefinition(Lcom/activeandroid/TableInfo;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/activeandroid/TableInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/activeandroid/util/SQLiteUtils;->sUniqueGroupMap:Ljava/util/HashMap;

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/activeandroid/util/SQLiteUtils;->sOnUniqueConflictsMap:Ljava/util/HashMap;

    .line 138
    invoke-virtual {p0}, Lcom/activeandroid/TableInfo;->getFields()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 139
    invoke-static {p0, v0}, Lcom/activeandroid/util/SQLiteUtils;->createUniqueColumnDefinition(Lcom/activeandroid/TableInfo;Ljava/lang/reflect/Field;)V

    goto :goto_0

    .line 142
    :cond_0
    sget-object v0, Lcom/activeandroid/util/SQLiteUtils;->sUniqueGroupMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v2

    .line 155
    :goto_1
    return-object v0

    .line 146
    :cond_1
    sget-object v0, Lcom/activeandroid/util/SQLiteUtils;->sUniqueGroupMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 147
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 148
    sget-object v1, Lcom/activeandroid/util/SQLiteUtils;->sUniqueGroupMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 149
    sget-object v4, Lcom/activeandroid/util/SQLiteUtils;->sOnUniqueConflictsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/activeandroid/annotation/Column$ConflictAction;

    .line 151
    const-string v4, "UNIQUE (%s) ON CONFLICT %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, ", "

    .line 152
    invoke-static {v7, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v1, 0x1

    invoke-virtual {v0}, Lcom/activeandroid/annotation/Column$ConflictAction;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 151
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move-object v0, v2

    .line 155
    goto :goto_1
.end method

.method public static execSql(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lcom/activeandroid/Cache;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public static execSql(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 102
    invoke-static {}, Lcom/activeandroid/Cache;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    return-void
.end method

.method public static intQuery(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 114
    invoke-static {}, Lcom/activeandroid/Cache;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 115
    invoke-static {v0}, Lcom/activeandroid/util/SQLiteUtils;->processIntCursor(Landroid/database/Cursor;)I

    move-result v1

    .line 116
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 118
    return v1
.end method

.method public static lexSqlScript(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v9, 0x64

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 376
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v0

    move v3, v1

    move v4, v1

    move v0, v1

    .line 380
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v0, v7, :cond_4

    .line 381
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 383
    const/16 v8, 0x3b

    if-ne v7, v8, :cond_0

    if-nez v4, :cond_0

    if-nez v3, :cond_0

    .line 384
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    move v3, v1

    move v4, v1

    .line 380
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 391
    :cond_0
    const/16 v8, 0x27

    if-ne v7, v8, :cond_1

    if-nez v3, :cond_1

    .line 392
    if-nez v4, :cond_2

    move v4, v5

    .line 395
    :cond_1
    :goto_2
    const/16 v8, 0x5c

    if-ne v7, v8, :cond_3

    if-nez v3, :cond_3

    move v3, v5

    .line 397
    :goto_3
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    move v4, v1

    .line 392
    goto :goto_2

    :cond_3
    move v3, v1

    .line 395
    goto :goto_3

    .line 400
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 401
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    :cond_5
    return-object v6
.end method

.method public static processCursor(Ljava/lang/Class;Landroid/database/Cursor;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/activeandroid/Model;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/activeandroid/Model;",
            ">;",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 325
    invoke-static {p0}, Lcom/activeandroid/Cache;->getTableInfo(Ljava/lang/Class;)Lcom/activeandroid/TableInfo;

    move-result-object v0

    .line 326
    invoke-virtual {v0}, Lcom/activeandroid/TableInfo;->getIdName()Ljava/lang/String;

    move-result-object v1

    .line 327
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 330
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 332
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 337
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 339
    :cond_0
    invoke-interface {v4, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {p0, v6, v7}, Lcom/activeandroid/Cache;->getEntity(Ljava/lang/Class;J)Lcom/activeandroid/Model;

    move-result-object v0

    .line 340
    if-nez v0, :cond_1

    .line 341
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/activeandroid/Model;

    .line 344
    :cond_1
    invoke-virtual {v0, p1}, Lcom/activeandroid/Model;->loadFromCursor(Landroid/database/Cursor;)V

    .line 345
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-nez v0, :cond_0

    .line 365
    :cond_2
    :goto_0
    return-object v2

    .line 352
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Your model "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not define a default constructor. The default constructor is required for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "now in ActiveAndroid models, as the process to populate the ORM model is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "1. instantiate default model 2. populate fields"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :catch_1
    move-exception v0

    .line 362
    const-string v1, "Failed to process cursor."

    invoke-static {v1, v0}, Lcom/activeandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static processIntCursor(Landroid/database/Cursor;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 369
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 372
    :cond_0
    return v0
.end method

.method public static rawQuery(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/activeandroid/Model;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/activeandroid/Model;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 106
    invoke-static {}, Lcom/activeandroid/Cache;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 107
    invoke-static {p0, v0}, Lcom/activeandroid/util/SQLiteUtils;->processCursor(Ljava/lang/Class;Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    .line 108
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 110
    return-object v1
.end method

.method public static rawQuerySingle(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Lcom/activeandroid/Model;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/activeandroid/Model;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/activeandroid/Model;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 122
    invoke-static {p0, p1, p2}, Lcom/activeandroid/util/SQLiteUtils;->rawQuery(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 124
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 125
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/activeandroid/Model;

    .line 128
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
